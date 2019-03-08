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

class planRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.start = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planRequest
    // Serialize message field [goal]
    bufferOffset = _arraySerializer.float64(obj.goal, buffer, bufferOffset, null);
    // Serialize message field [start]
    bufferOffset = _arraySerializer.float64(obj.start, buffer, bufferOffset, null);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planRequest
    let len;
    let data = new planRequest(null);
    // Deserialize message field [goal]
    data.goal = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [start]
    data.start = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.goal.length;
    length += 8 * object.start.length;
    length += object.id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/planRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7da21cd8786103d5266373aa7388bd0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] goal
    float64[] start
    string id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = []
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    return resolved;
    }
};

class planResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan_x = null;
      this.plan_y = null;
    }
    else {
      if (initObj.hasOwnProperty('plan_x')) {
        this.plan_x = initObj.plan_x
      }
      else {
        this.plan_x = [];
      }
      if (initObj.hasOwnProperty('plan_y')) {
        this.plan_y = initObj.plan_y
      }
      else {
        this.plan_y = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planResponse
    // Serialize message field [plan_x]
    bufferOffset = _arraySerializer.float64(obj.plan_x, buffer, bufferOffset, null);
    // Serialize message field [plan_y]
    bufferOffset = _arraySerializer.float64(obj.plan_y, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planResponse
    let len;
    let data = new planResponse(null);
    // Deserialize message field [plan_x]
    data.plan_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [plan_y]
    data.plan_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.plan_x.length;
    length += 8 * object.plan_y.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/planResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a1c16cdfeb33748b323312f10aaa4b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] plan_x
    float64[] plan_y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planResponse(null);
    if (msg.plan_x !== undefined) {
      resolved.plan_x = msg.plan_x;
    }
    else {
      resolved.plan_x = []
    }

    if (msg.plan_y !== undefined) {
      resolved.plan_y = msg.plan_y;
    }
    else {
      resolved.plan_y = []
    }

    return resolved;
    }
};

module.exports = {
  Request: planRequest,
  Response: planResponse,
  md5sum() { return '27f79911e87bcca9dad2a28a074d44b4'; },
  datatype() { return 'planner/plan'; }
};
