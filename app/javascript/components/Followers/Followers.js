import React from 'react';
import classes from './Followers.module.css';
import {CgProfile} from 'react-icons/cg'

const Followers = (props) => {
    return(
        <div className={classes.main}>
            <h2>Who to Follow?</h2>
            <ul className={classes.list}>
                {props.users.map(user=>{
                    return(
                        <li className={classes.listItems} key={user.email}>
                            <CgProfile size={20}/>
                            <div className={classes.listItemText}>
                                <span className={classes.listItemName}>{user.username}</span>
                                <span>{user.email}</span>
                            </div>
                        </li>
                    )
                })}
            </ul>
            <div className={classes.showMore}>See More</div>
        </div>
    )
}

export default Followers;   