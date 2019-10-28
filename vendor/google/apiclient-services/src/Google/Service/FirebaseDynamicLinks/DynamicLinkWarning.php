<?php
/*
 * Copyright 2014 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

class Google_Service_FirebaseDynamicLinks_DynamicLinkWarning extends Google_Model {
    public $warningCode;
    public $warningDocumentLink;
    public $warningMessage;

    public function setWarningCode($warningCode) {
        $this->warningCode = $warningCode;
    }

    public function getWarningCode() {
        return $this->warningCode;
    }

    public function setWarningDocumentLink($warningDocumentLink) {
        $this->warningDocumentLink = $warningDocumentLink;
    }

    public function getWarningDocumentLink() {
        return $this->warningDocumentLink;
    }

    public function setWarningMessage($warningMessage) {
        $this->warningMessage = $warningMessage;
    }

    public function getWarningMessage() {
        return $this->warningMessage;
    }
}