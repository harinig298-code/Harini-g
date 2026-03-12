<!DOCTYPE html>  <html lang="en">  
<head>  
<meta charset="UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<title>Student Activity Tracker - Home</title>  
<style>  
    body {  
        font-family: Arial, sans-serif;  
        margin: 0;  
        padding: 0;  
        background-color: #e0f1f3;  
        color: #333;  
        text-align: center;  
    }  header {  
    background-color: #46e441;  
    padding: 60px 20px;  
}  

header h1 {  
    font-size: 36px;  
    margin-bottom: 10px;  
    color: black;  
}  

header p {  
    font-size: 20px;  
    font-weight: bold;  
    margin-bottom: 20px;  
    color: black;  
}  

.nav-buttons {  
    margin: 20px 0;  
}  

.nav-buttons button {  
    background-color: #ca2727;  
    color: black;  
    border: 2px solid #8457f0;  
    padding: 12px 25px;  
    margin: 0 10px;  
    font-size: 16px;  
    font-weight: bold;  
    border-radius: 5px;  
    cursor: pointer;  
}  

.nav-buttons button:hover {  
    background-color: #80f75c;  
}  

.activity-section {  
    max-width: 600px;  
    margin: 0 auto 40px auto;  
}  

.activity-card {  
    background-color: #eaec55; /* light brown for card */  
    padding: 20px;  
    margin-bottom: 20px;  
    border-radius: 8px;  
    box-shadow: 0px 4px 10px rgba(0,0,0,0.1);  
    text-align: center;  
}  

.activity-title {  
    font-weight: bold;  
    font-size: 18px;  
    color: black;  
    margin-bottom: 8px;  
}  

.activity-desc {  
    font-size: 16px;  
    color: black;  
    margin-bottom: 12px;  
}  

.activity-status {  
    display: inline-block;  
    font-weight: bold;  
    margin-bottom: 10px;  
    font-size: 16px;  
    padding: 6px 12px;  
    border-radius: 5px;  
    color: black;  
    background-color: #f8d7da; /* light red for pending */  
    min-width: 120px;  
}  

.status-completed {  
    background-color: green;  
    color: white;  
}  

.complete-btn {  
    background-color: green;  
    color: white;  
    border: none;  
    padding: 8px 15px;  
    font-weight: bold;  
    border-radius: 5px;  
    cursor: pointer;  
}  

.complete-btn:disabled {  
    background-color: gray;  
    cursor: default;  
}  

/* Summary button at bottom */  
#summary-btn {  
    background-color: #fff9c4; /* light yellow */  
    border: none;  
    padding: 12px 25px;  
    font-weight: bold;  
    border-radius: 5px;  
    font-size: 16px;  
    margin-top: 20px;  
    cursor: default;  
}  

#completion-percent {  
    font-size: 16px;  
    font-weight: bold;  
    margin-top: 10px;  
    color: #333;  
}

</style>  
</head>  
<body>  
<header>  
    <h1>Student Activity Tracker</h1>  
    <p>Welcome to your Dashboard!</p>  
    <div class="nav-buttons">  
        <button onclick="alert('Already on Home')">Home</button>  
        <button onclick="alert('Navigate to Activities')">Activities</button>  
        <button onclick="alert('Navigate to Progress')">Progress</button>  
    </div>  
</header>  <div class="activity-section">  
    <h2>Activity List</h2>  
<div class="activity-card">  
    <div class="activity-title">Student registration form</div>  
    <div class="activity-desc">create a form to register new students with details like name,roll number,etc</div>  
    <div class="activity-status">Status:Pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  

 
<div class="activity-card">  
    <div class="activity-title">Attendance  Tracker</div>  
    <div class="activity-desc">Mark attendance for students and display records</div>  
    <div class="activity-status">Status:pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  


<div class="activity-card">  
    <div class="activity-title">student profile page</div>  
    <div class="activity-desc">Display student details and attendance records</div>  
    <div class="activity-status">Status: Pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  


<div class="activity-card">  
    <div class="activity-title">Responsive Design</div>  
    <div class="activity-desc">Make the tracker responsive fir mobile and desktop devices</div>  
    <div class="activity-status">Status: Pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  


<div class="activity-card">  
    <div class="activity-title"Data validation</div>  
    <div class="activity-desc">validate form inputs to ensure correct data</div>  
    <div class="activity-status">Status: Pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  


<div class="activity-card">  
    <div class="activity-title">Local storage implementation</div>  
    <div class="activity-desc">store student data locally using browser storage</div>  
    <div class="activity-status">Status: Pending</div>  
    <button class="complete-btn" onclick="markCompleted(this)">Mark Completed</button>  
</div>  


<button id="summary-btn">0 out of 6 activities completed</button>  
<div id="completion-percent">0% Completed</div>

</div>  <script>  
function updateProgress() {  
    const cards = document.querySelectorAll('.activity-card');  
    let completed = 0;  
    cards.forEach(card => {  
        const status = card.querySelector('.activity-status');  
        if (status.textContent === 'Status: Completed') completed++;  
    });  
  
    
    const summaryBtn = document.getElementById('summary-btn');  
    summaryBtn.textContent = `${completed} out of ${cards.length} activities completed`;  
  
    
    const percent = Math.round((completed / cards.length) * 100);  
    const percentDiv = document.getElementById('completion-percent');  
    percentDiv.textContent = `${percent}% Completed`;  
}  
  
function markCompleted(btn) {  
    const card = btn.parentElement;  
    const status = card.querySelector('.activity-status');  
    status.textContent = 'Status: Completed';  
    status.classList.add('status-completed');  
    btn.disabled = true;  
    updateProgress();  
}  
  

updateProgress();  
</script>  </body>  
</html>
