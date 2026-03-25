<template>
    <div class="container my-5">
        <h2>แสดงข้อมูลพนักงาน</h2>
       <table class="table table-hover">
  <thead class="table table-dark table-hover">
    <tr>
      <th>รหัสพนักงาน</th>
      <th>ชื่อ-นามสกุล</th>
      <th>แผนก</th>
      <th>เงินเดือน</th>
      <th>สถานะ</th>
      <th>วันที่ทำรายการ</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="item in employees" :key="item.emp_id">
      <th>{{ item.emp_id }}</th>
      <td>{{ item.full_name }}</td>
      <td>{{ item.department }}</td>
      <td>{{ item.salary }}</td>
      <td>
        <span v-if="item.active==1">ปกติ</span>
        <span v-else>ลาออก</span>
      </td>
      <td>{{ item.created_at }}</td>
    </tr>
  </tbody>
</table>
    </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'

const employees = ref([])
const loading = ref(true)
const error = ref(null)

onMounted(async () => {
  try {
    const res = await fetch('http://localhost/project-vue-68709054/php.api/show_employees.php')
    employees.value = await res.json()
    //products.value = data.products
  } catch (err) {
    error.value = 'โหลดข้อมูลไม่สำเร็จ'
  } finally {
    loading.value = false
  }
})
</script>