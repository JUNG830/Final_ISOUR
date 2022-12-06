import React from "react";

const ChatForm = ({ handleSubmit, text, setText, setImg }) => {
    return (
        <form onSubmit={handleSubmit}>
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
    )
}
export default ChatForm;