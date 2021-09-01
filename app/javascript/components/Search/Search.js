import React from 'react';
import {Paper,InputBase,IconButton} from '@material-ui/core';
import {FiSearch} from 'react-icons/fi';
import classes from './Search.module.css';

const Search = () => {
    return(
        <Paper component="form" className={classes.root} style={{background: '#23272a', borderRadius: '9999px', width: '100%'}}>
        <InputBase
            className={classes.input}
            placeholder="Search"
            style = {{ fontSize: '10px', color: 'white'}}
        />
        <IconButton type="submit" className={classes.iconButton} aria-label="search">
            <FiSearch size={15} style={{color: 'whitesmoke'}}/>
        </IconButton>
        </Paper>
    )
}

export default Search;