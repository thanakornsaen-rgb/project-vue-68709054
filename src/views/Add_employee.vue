<template>
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg p-4">
                    <h2 class="text-center mb-4">เพิ่มข้อมูลพนักงาน</h2>

                    <form @submit.prevent="addEmployee">

                        <div class="mb-3">
                            <label class="form-label">ชื่อ-นามสกุล</label>
                            <input type="text" 
                            class="form-control" 
                            v-model="form.full_name" 
                            placeholder="ชื่อ-นามสกุล"
                            required 
                            />
                        </div>

                        <div class="mb-3">
                            <select class="form-select" v-model="form.department" required>
                                <option value="" disabled>เลือกแผนก</option>
                                <option value="คอมพิวเตอร์">คอมพิวเตอร์</option>
                                <option value="บัญชี">บัญชี</option>
                                <option value="บุคคล">บุคคล</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">เงินเดือน</label>
                            <input type="text" 
                            class="form-control"
                            v-model="form.salary" 
                            placeholder="เงินเดือน"
                            required
                            />
                        </div>

                        <button type="submit" class="btn btn-dark w-100">
                            บันทึก
                        </button>

                    </form>

                    <!-- แสดงผล -->
                    <div v-if="message" class="alert mt-3"
                        :class="status === 'success' ? 'alert-success' : 'alert-danger'">
                        {{ message }}
                    </div>

                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            form: {
                full_name: '',
                department: '',
                salary: '',
                username: '',
                active: '1',
            },
            message: '',
            status: ''
        }
    },
    methods: {
        async addEmployee() {
            try {
                const res = await fetch(
                "http://localhost/project-vue-68709054/php.api/add_employee.php",
                {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(this.form)
                });

                const result = await res.json();

                this.message = result.message;
                this.status = result.status;

                // เคลียร์ฟอร์ม
                if (result.status === 'success') {
                    this.form = {
                        full_name: '',
                        department: '',
                        salary: '',
                        active: '',
                    };
                }

            } catch (error) {
                this.message = 'เชื่อมต่อ API ไม่สำเร็จ';
                this.status = 'error';
            }
        }
    }
}
</script>