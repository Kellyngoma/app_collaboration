<?php
$action = $_GET['action'];

switch($action) {
    case 'home':
        include './views/home.php';
        break;
    case 'agents':
        include './views/agents.php';
        break;
    case 'patients':
        include './views/patients.php';
        break;
        
}