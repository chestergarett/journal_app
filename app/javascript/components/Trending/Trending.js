import React from 'react';
import classes from './Trending.module.css';
import {IoCreateOutline} from 'react-icons/io5'


const Trending = (props) => {
    return(
        <div className={classes.main}>
            <div className={classes.mainHeader}>
                <h2>Trends for you </h2>
                <IoCreateOutline size={20}/>
            </div>
            <div className={classes.mainTopics}>
                {props.topics.map(topic=>{
                    return(
                        <div key={topic.topic} id={topic.topic} className={classes.items}>
                            <span>{topic.topic}</span>
                            <span>{topic.topic.tweets}</span>
                        </div>
                    )
                })}
            </div>
            <div className={classes.showMore}>Show More </div>
        </div>            
    )
}


export default Trending;