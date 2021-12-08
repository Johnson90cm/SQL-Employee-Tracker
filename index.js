// requirements
const mysql = require('mysql');
const inquirer = require('inquirer');
const Choices = require('inquirer/lib/objects/choices');

// connect to local host
const connection = mysql.createConnection({
    host: 'localhost',

    port: 3001,

    user: 'root',

    password: 'johnson90',

    database: 'employees'
})
connection.connect(err => {
    if (err) throw err;
    prompt();
})

// store questions to keep inquirer function clean
const questions = {
    viewEmployees: "View Employees",
    viewDepartments: "View By Department",
    viewByManager: "View By Manager",
    addEmployee: "Add Employee",
    removeEmployee: "Remove Employee",
    changeRole: "Change Roles",
    viewRoles: "View Roles",
    exit: "Exit"
};

// inquirer pormpts
function prompt() {
    inquirer
        .prompt({
            name: 'action',
            type: 'list',
            message: 'Select an Action',
            choices: [
                questions.viewEmployees,
                questions.viewDepartments,
                questions.viewByManager,
                questions.addEmployee,
                questions.removeEmployee,
                questions.changeRole,
                questions.viewRoles,
                questions.exit
            ]
        })
        .then(answer => {

        })
}

// functions
function createName() { }

function addEmployee() { }

function removeEmployee() { }

function changeRole() { }

function viewDepartments() { }

function viewRoles() { }

function viewByManager() { }