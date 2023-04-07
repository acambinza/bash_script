#! /bin/bash

select op in UPDATE RESTART INIT
do
    case  $op in 
    UPDATE)
        echo "Update selected";;
    
    RESTART)
        echo "Restart selected";;

    INIT)
     echo "Init Selected";;

    *)
    echo "Error, wrong option";;

    esac

done