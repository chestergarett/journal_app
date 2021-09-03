import React from 'react';
import classes from './EditDelete.module.css';
import {AiFillDelete} from 'react-icons/ai';
import {Tooltip} from '@material-ui/core';


const Edit = (props) => {
    return(

        <AiFillDelete size={20} className={classes.delete} name={props.delete}/>
    )
}

export default Edit;
