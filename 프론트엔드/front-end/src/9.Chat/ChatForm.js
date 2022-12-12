import React from "react";
import "./Chat.css";

const ChatForm = ({ handleSubmit, text, setText, setImg }) => {
    return (
    <div>
        <form className="message_form" onSubmit={handleSubmit}>
            <label htmlFor="img">
                {/* <Attachment /> */}
            </label>
            <input
            onChange={(e) => setImg(e.target.files[0])}
            type="file"
            id="img"
            accept="image/*"
            style={{ display: "none" }}
            />

            <div>
                <input
                    type="text"
                    placeholder="Enter message"
                    value={text}
                    onChange={(e) => setText(e.target.value)}
                />
            </div>
            <div>
                <button className="btn">Send</button>
            </div>
        </form>
    </div>
    )
}
export default ChatForm;