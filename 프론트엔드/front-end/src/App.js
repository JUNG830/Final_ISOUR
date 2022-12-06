import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Main from './1. Main/Main';
import Login from './2. Login/Login';
import SignUp from './3. SignUp/SignUp';
import MBTI from './6. MBTI/MBTI';
import MbtiTypes from './6. MBTI/MbtiTypes';
import Home from './4. Home/Home';
import Logout from './other/Logout';
import Postbox from './7. PostBOX/Postbox';
import FindInfo from './2. Login/FindInfo';
import GChat from './9.Chat/GChat';
import ChatHome from './9.Chat/ChatHome';
import Matching from './8.Matching/Matching_원본';
import MyPage from './5. MyPage/MyPage';
import Navber from './Navber/Nav';
// import Test from './test/test';
import '../src/App.css';
import KakaoToken from './2. Login/KakaoToken';


function App() {
  return (
    <Router>
      <Navber/>
      <Routes>
        <Route path="/" element={<Main />} />
        <Route path="/login" element={<Login />} />
        <Route path='/signup' element={<SignUp />} />
        <Route path='/home' element={<Home />} />
        <Route path='/mypage' element={<MyPage />} />
        <Route path='/MBTI' element={<MBTI />} />
        <Route path='/MbtiTypes' element={<MbtiTypes />} />
        <Route path='/Postbox' element={<Postbox />} />
        <Route path='/FindInfo' element={<FindInfo />} />
        <Route path='/GChat' element={<GChat/>}/>
        <Route path='/ChatHome' element={<ChatHome/>}/>
        <Route path='/Matching' element={<Matching/>}/>
        {/* <Route path='/test' element={<Test/>}/> */}
        <Route path='/login/kakao' element={<KakaoToken />}/>
      </Routes>
    </Router>
  );
}

export default App;
