<?php

$con = mysqli_connect("localhost","root","");
if(!$con)
{   
    die('Could not connect : '.mysqli_error());
} //run
$db_selected = mysqli_select_db($con,"calculator");
if(!$db_selected)
{
    die("Cannot use calculator db".mysqli_error());
}
$sql = "SELECT * from time";
$result = mysqli_query($con,$sql);
$finalt=mysqli_fetch_row($result);

$sql = "SELECT * from initialspeed";
$result1 = mysqli_query($con,$sql);
$finalI=mysqli_fetch_row($result1);

$sql = "SELECT * from finalspeed";
$result2 = mysqli_query($con,$sql);
$final=mysqli_fetch_row($result2);

//print_r($final);
//print_r($finalt);
//print_r($finalI);
  //  echo($final[6]);

if (isset($_POST['btn']))
{
    $ispeed= $_POST['initialspeed'];
    $fspeed= $_POST['finalspeed'];
    $time= $_POST['time'];
    $u1=$_POST['initialspeedunit'];
    $u2=$_POST['finalspeedunit'];
    $u3=$_POST['timeunit'];
    $u4=$_POST['accelerationunit'];
    switch($u1)
    {
        case 1:
        {
            $ispeed = $ispeed*$finalI[0];
        break;
        }
        case 2:
        {
             $ispeed = $ispeed*$finalI[1];
            break;
        }
        case 3:
        {
            $ispeed = $ispeed*$finalI[2];
        break;
        }
        case 4:
        {
                 $ispeed = $ispeed*$finalI[3];
                break;
        }
        case 5:
            {
                $ispeed = $ispeed*$finalI[4];
            break;
            }
            case 6:
            {
                 $ispeed = $ispeed*$finalI[5];
                break;
            }
            case 7:
            {
                $ispeed = $ispeed*$finalI[6];
            break;
            }
            case 8:
            {
                     $ispeed = $ispeed*$finalI[7];
                    break;
            }
            case 9:
                {
                    $ispeed = $ispeed*$finalI[8];
                break;
                }
                case 10:
                {
                         $ispeed = $ispeed*$finalI[9];
                        break;
                }
            }
            switch($u2)
            {
                case 1:
                {
                    $speed = $fspeed*$final[0];
                break;
                }
                case 2:
                {
                     $fspeed = $fspeed*$final[1];
                    break;
                }
                case 3:
                {
                    $fspeed = $fspeed*$final[2];
                break;
                }
                case 4:
                {
                         $fspeed = $fspeed*$final[3];
                        break;
                }
                case 5:
                    {
                        $fspeed = $fspeed*$final[4];
                    break;
                    }
                    case 6:
                    {
                         $fspeed = $fspeed*$final[5];
                        break;
                    }
                    case 7:
                    {
                        $fspeed = $fspeed*$final[6];
                    break;
                    }
                    case 8:
                    {
                             $fspeed = $fspeed*$final[7];
                            break;
                    }
                    case 9:
                        {
                            $fspeed = $fspeed*$final[8];
                        break;
                        }
                        case 10:
                        {
                                 $fspeed = $fspeed*$final[9];
                                break;
                        }
                    }



    switch($u3)
    {
        case 1:
        {
            $time = $time*$finalt[0];
        break;
        }
        case 2:
        {
            $time = $time*$finalt[1];
            break;
        }
        case 3:
        {
            $time = $time*$finalt[2];
        break;
        }
        case 4:
        {
            $time = $time*$finalt[3];
                break;
        }
        case 5:
            {
                $time = $time*$finalt[4];
            break;
            }
            case 6:
            {
                $time = $time*$finalt[5];
                break;
            }
            case 7:
            {
                $time = $time*$finalt[6];
            break;
            }
            case 8:
            {
                $time = $time*$finalt[7];
                    break;
            }
        }
    $result=$fspeed-$ispeed;
    $acc=$result/$time;

    switch($u4)
    {
        case 1:
        {
            $acc = $acc*$finala[0];
        break;
        }
        case 2:
        {
            $acc = $acc*$finala[1];
            break;
        }
        case 3:
        {
            $acc = $acc*$finala[2];
        break;
        }
    }

    echo("acceleration is: " );
    echo($acc);

    
    }
mysqli_close($con);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
</head>
<body>
    <br><br>
    <h1>Acceleration calculator</h1>
    <br>

    <form method="POST">
    
    initial speed:  <input  name="initialspeed">
    <select name="initialspeedunit">
    <option value="1">meters per second m/s</option>
    <option value="2">kilometers per hour km/h</option>
    <option value="3">feet per second</option>
    <option value="4">miles per hour mph</option>
    <option value="5">knots</option>
    <option value="6">kilometers per second km/s</option>
    <option value="7">miles per seconds mi/s</option>
    <option value="8">light speed</option>
    </select>
    <br>
    final speed:  <input name="finalspeed">
    <select name="finalspeedunit">
    <option value="1">meters per second m/s</option>
    <option value="2">kilometers per hour km/h</option>
    <option value="3">feet per second</option>
    <option value="4">miles per hour mph</option>
    <option value="5">knots</option>
    <option value="6">kilometers per second km/s</option>
    <option value="7">miles per seconds mi/s</option>
    <option value="8">light speed</option>
    </select> <br>
    Time:  <input  name="time" >
    <select name="timeunit">
    <option value="1">seconds (sec)</option>
    <option value="2">minutes (min)</option>
    <option value="3">hours (hrs)</option>
    <option value="4">day (days)</option>
    <option value="5">weeks (wks)</option>
    <option value="6">months (mos)</option>
    <option value="7">years (yrs)</option>
    <option value="8">minutes/seconds </option>
    <option value="6">hours/minutes </option>
    <option value="6">miliseconds (ms)</option>
    </select><br><br>
    <button type = "submit" name="btn">calculate</button> <br>
   Acceleration:  
    <select name="accelerationunit">
    <option value="1">meters per second squared(m/s<sup>2</sup>)</option>
    <option value="2">gravitational acc. of earth (g)</option>
    <option value="3">feet per second squared (ft/s<sup>2</sup>)</option>
    </select><br>
    </form>
</body>
</html>

<style>
body{
    background:silver;
    color:black
    
}
h1{
    text-align:center;
}
form
{
    width:500px;
    background:white;
    border-radius:4px;
    height:200px;
    border:1px solid white;
    margin:0 auto;
    padding: 10 px;
    align:center;
}
form input{
    width:30%;
    background:white;
    border-radius:4px;
    border:1px solid silver;
    margin:0 auto;
    padding: 10 px;
}
form select{
    width:100 %;
    background:white;
    border-radius:4px;
    border:1px solid silver;
    margin:0 auto;
    padding: 10 px;
}

form button{
    background: #abccbb;
    width:100%;
    border-radius:4px;
    border:1px solid silver;
    padding: 10 px;
    height:8%

}
</style>