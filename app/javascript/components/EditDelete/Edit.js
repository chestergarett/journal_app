import React from 'react';
import classes from './EditDelete.module.css';
import {AiOutlineEdit} from 'react-icons/ai';


const Edit = (props) => {
    return(
        <a href={props.edit}>
            <AiOutlineEdit size={20} className={classes.edit}/>
        </a>
    )
}

export default Edit;
