// Auto-generated. Do not edit!

// (in-package planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class goal_updateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.avail = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
      if (initObj.hasOwnProperty('avail')) {
        this.avail = initObj.avail
      }
      else {
        this.avail = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goal_updateRequest
    // Serialize message field [goal]
    bufferOffset = _arraySerializer.float64(obj.goal, buffer, bufferOffset, null);
    // Serialize message field [avail]
    bufferOffset = _serializer.int32(obj.avail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goal_updateRequest
    let len;
    let data = new goal_updateRequest(null);
    // Deserialize message field [goal]
    data.goal = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [avail]
    data.avail = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.goal.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/goal_updateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '735f79c4b63929bdb61bf7d86838d0dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] goal
    int32 avail
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goal_updateRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = []
    }

    if (msg.avail !== undefined) {
      resolved.avail = msg.avail;
    }
    else {
      resolved.avail = 0
    }

    return resolved;
    }
};

class goal_updateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.run = null;
    }
    else {
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goal_updateResponse
    // Serialize message field [run]
    bufferOffset = _serializer.string(obj.run, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goal_updateResponse
    let len;
    let data = new goal_updateResponse(null);
    // Deserialize message field [run]
    data.run = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.run.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/goal_updateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc810bfd9bba1f4be290057b4ee1f72d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string run
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goal_updateResponse(null);
    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: goal_updateRequest,
  Response: goal_updateResponse,
  md5sum() { return '436099e14cbdae6055989aead131b550'; },
  datatype() { return 'planner/goal_update'; }
};
