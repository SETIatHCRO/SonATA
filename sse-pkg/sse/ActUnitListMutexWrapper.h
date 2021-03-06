/*******************************************************************************

 File:    ActUnitListMutexWrapper.h
 Project: OpenSonATA
 Authors: The OpenSonATA code is the result of many programmers
          over many years

 Copyright 2011 The SETI Institute

 OpenSonATA is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 OpenSonATA is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with OpenSonATA.  If not, see<http://www.gnu.org/licenses/>.
 
 Implementers of this code are requested to include the caption
 "Licensed through SETI" with a link to setiQuest.org.
 
 For alternate licensing arrangements, please contact
 The SETI Institute at www.seti.org or setiquest.org. 

*******************************************************************************/


#ifndef ActUnitListMutexWrapper_H
#define ActUnitListMutexWrapper_H

#include "/usr/local/ACE_wrappers/ace/Recursive_Thread_Mutex.h"
#include "/usr/local/ACE_wrappers/ace/Guard_T.h"
#include "ace/Synch.h"
#include "ActUnitList.h"

class ActUnitListMutexWrapper
{
 public:
   ActUnitListMutexWrapper();
   virtual ~ActUnitListMutexWrapper();

   ActUnitListMutexWrapper(const ActUnitListMutexWrapper& rhs);
   ActUnitListMutexWrapper& operator=(const ActUnitListMutexWrapper& rhs);
   ActUnitListMutexWrapper& operator=(const ActUnitList& rhs);

   ActUnitList getListCopy() const;
   void addToList(ActivityUnit *actUnit);
   void removeFromList(ActivityUnit *actUnit);
   int listSize() const;

 private:

   mutable ACE_Recursive_Thread_Mutex objectMutex_;
   ActUnitList actUnitList_;
};

#endif // ActUnitListMutexWrapper_H
