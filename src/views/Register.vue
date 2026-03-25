<template>
    <div class="container my-5">
        <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4" style="width: 500px; border-radius: 15px;">
            <h3 class="text-center mb-4">Register</h3>
            <form>
                <div class="mb-3">
                    <label for="username" class="form-label">FirstName</label>
                    <input type="text" class="form-control" id="firstname" placeholder="FirstName" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">LastName</label>
                    <input type="password" class="form-control" id="lastname" placeholder="LastName" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Phone Number</label>
                    <input type="password" class="form-control" id="phone number" placeholder="Phone Number" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Username</label>
                    <input type="password" class="form-control" id="username" placeholder="Username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter password" required>
                </div>
                <button type="submit" class="btn btn-dark w-100">สมัครสมาชิก</button>
            </form>
        </div>
    </div>
</div>
</template>