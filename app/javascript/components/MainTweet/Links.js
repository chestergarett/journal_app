import React from 'react';
import classes from './Links.module.css'
import {BsChat} from 'react-icons/bs';
import {FaRetweet} from 'react-icons/fa';
import {AiOutlineHeart} from 'react-icons/ai';
import {FaShare} from 'react-icons/fa';

const Links = (props) => {
    
    return (
        <div className={classes.main}>
            <a href={props.reply_path}><BsChat size={15} className={classes.icons}/></a>
            <FaRetweet size={15} className={classes.icons}/>
            <AiOutlineHeart size={15} className={classes.icons}/>
            <FaShare size={15} className={classes.icons}/>
        </div>
    )
}

export default Links;