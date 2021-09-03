import React from 'react';
import classes from './LinksModal.module.css'
import {BsChat} from 'react-icons/bs';
import {FaRetweet} from 'react-icons/fa';
import {AiOutlineHeart} from 'react-icons/ai';
import {FaShare} from 'react-icons/fa';

const LinksModal = () => {
    
    return (
        <div className={classes.main}>
            <BsChat size={20} className={classes.icons}/>
            <FaRetweet size={20} className={classes.icons}/>
            <AiOutlineHeart size={20} className={classes.icons}/>
            <FaShare size={20} className={classes.icons}/>
        </div>
    )
}

export default LinksModal;