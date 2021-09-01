import React from 'react';
import classes from './MainForm.module.css';
import {CgProfile} from 'react-icons/cg';
import {BiPhotoAlbum} from 'react-icons/bi';
import {AiOutlineFileGif} from 'react-icons/ai';
import {BsFillBarChartFill} from 'react-icons/bs';
import {GrEmoji} from 'react-icons/gr';
import {AiTwotoneCalendar} from 'react-icons/ai';

const MainForm = () => {

    return (
        <div className={classes.main}>
            <div className={classes.form}>
                <CgProfile size={30}/>
                <input type="text" 
                    placeholder = "What's happening?"
                    className={classes.textField}
                />
            </div>
            <div className={classes.iconGroup}>
                <div className={classes.icons}>
                    <BiPhotoAlbum size={20} className={classes.iconItems}/>
                    <AiOutlineFileGif size={20} className={classes.iconItems}/>
                    <BsFillBarChartFill size={20} className={classes.iconItems}/>
                    <GrEmoji size={20} className={classes.iconItems}/>
                    <AiTwotoneCalendar size={20} className={classes.iconItems}/>
                </div>
                <div className={classes.iconButton}>
                    <button disabled className={classes.button}>Bweet</button>
                </div>
            </div>
        </div>
    )
}

export default MainForm;