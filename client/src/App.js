import { useEffect, useState } from "react";
import { Route, Switch } from "react-router-dom";

import AppHeader from "./components/AppHeader";
import HomePage from "./components/HomePage";
import LoginPage from "./components/LoginPage";
import ProfilePage from "./components/ProfilePage";
import TransactionPage from "./components/TransactionPage";


function App() {

  // setting up state to fetch all app data
  const[appData, setAppData] = useState([]);

  // setting up state for current user & their info
  const [currentUser, setCurrentUser] = useState([]);

  //  setting up state for selected Transaction
  const [selectedRecord, setSelectedRecord] = useState({
    buyer: '',
    record_id: 0,
    coin: '',
    price: 0,
    currency: '',
    seller: '',
  })

  // setting up state to determine whether cash form or coin form is displayed
  const [displayForm, setDisplayForm] = useState(false)

  // fetching all app data
  useEffect(()=>{
    fetch('http://localhost:9292/mockchain').then(resp=>resp.json()).then(data=>setAppData(data))
  }, [])
  
  return (
    <Switch>
       <Route path= '/home'>
          <HomePage appData={appData} currentUser={currentUser} selectedRecord={selectedRecord} setSelectedRecord={setSelectedRecord} setDisplayForm={setDisplayForm}/>
        </Route>
        <Route path= '/profile'>
          <ProfilePage appData={appData} currentUser={currentUser} selectedRecord={selectedRecord} setSelectedRecord={setSelectedRecord} setDisplayForm={setDisplayForm}/>
        </Route>
        <Route path={'/newtransaction'}>
          <TransactionPage selectedRecord={selectedRecord} setSelectedRecord={setSelectedRecord} appData={appData} setCurrentUser={setCurrentUser} currentUser={currentUser} displayForm={displayForm} setDisplayForm={setDisplayForm}/>
        </Route>
      <Route path= '/'>
        <>
          <AppHeader/>
          <LoginPage appData={appData} currentUser={currentUser} setCurrentUser={setCurrentUser}/>
        </>
      </Route>
    </Switch>
      );
}

export default App;
