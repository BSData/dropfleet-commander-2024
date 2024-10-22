<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-5fec-a8da-5dec-0ae6" name="Dropfleet Commander (2024)" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" authorName="John Kemp" authorUrl="https://github.com/BSData/dropfleet-commander-2024">
  <categoryEntries>
    <categoryEntry name="Configuration" id="8a9e-8399-ae64-5be9" hidden="false"/>
    <categoryEntry name="Admirals" id="fb8b-57b3-d46c-d679" hidden="false"/>
    <categoryEntry name="Faction/Famous Admirals" id="79f7-4244-6fb7-d41a" hidden="false">
      <constraints>
        <constraint type="max" value="1" field="selections" scope="force" shared="true" id="9603-a35a-eecd-928b" includeChildSelections="false"/>
      </constraints>
    </categoryEntry>
    <categoryEntry name="Group" id="default-category">
      <constraints>
        <constraint type="max" value="16" field="selections" scope="force" shared="true" id="944d-d5c8-c46e-76c6"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="20" field="944d-d5c8-c46e-76c6">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="3fda-65f2-6cc3-ee33" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
        <modifier type="set" value="24" field="944d-d5c8-c46e-76c6">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="c6ef-6271-e246-47a8" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
      </modifiers>
      <modifierGroups>
        <modifierGroup type="and">
          <modifiers>
            <modifier type="set" value="28" field="944d-d5c8-c46e-76c6"/>
            <modifier type="increment" value="4" field="944d-d5c8-c46e-76c6">
              <repeats>
                <repeat value="1000" repeats="1" field="limit::ab32-c9b6-10f3-cbdb" scope="roster" childId="any" shared="true" roundUp="true" percentValue="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="d410-4aa8-c469-064b" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifierGroup>
      </modifierGroups>
    </categoryEntry>
    <categoryEntry name="Colossal Groups" id="52fa-6578-d171-57d6" hidden="false">
      <modifiers>
        <modifier type="set" value="1" field="a8e0-6023-d5dc-a1ec">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="3fda-65f2-6cc3-ee33" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
        <modifier type="set" value="2" field="a8e0-6023-d5dc-a1ec">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="c6ef-6271-e246-47a8" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
        <modifier type="set" value="3" field="a8e0-6023-d5dc-a1ec">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="d410-4aa8-c469-064b" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
      </modifiers>
      <constraints>
        <constraint type="max" value="0" field="selections" scope="force" shared="true" id="a8e0-6023-d5dc-a1ec"/>
      </constraints>
    </categoryEntry>
    <categoryEntry name="Heavy Groups" id="8d99-053d-ffeb-98c5" hidden="false">
      <constraints>
        <constraint type="max" value="0" field="ab32-c9b6-10f3-cbdb" scope="force" shared="true" id="5ff3-d823-7c8b-68ad" percentValue="false" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="increment" value="1" field="5ff3-d823-7c8b-68ad">
          <repeats>
            <repeat value="1" repeats="1" field="ab32-c9b6-10f3-cbdb" scope="force" childId="e555-ff57-c478-18cd" shared="true" roundUp="false"/>
          </repeats>
        </modifier>
      </modifiers>
    </categoryEntry>
    <categoryEntry name="Medium Groups" id="e555-ff57-c478-18cd" hidden="false"/>
    <categoryEntry name="Light Groups" id="f51b-d892-62c0-3f1e" hidden="false">
      <constraints>
        <constraint type="max" value="0" field="ab32-c9b6-10f3-cbdb" scope="force" shared="true" id="8f80-578f-070c-7526" percentValue="false"/>
      </constraints>
      <modifiers>
        <modifier type="increment" value="1" field="8f80-578f-070c-7526">
          <repeats>
            <repeat value="1" repeats="1" field="ab32-c9b6-10f3-cbdb" scope="force" childId="e555-ff57-c478-18cd" shared="true" roundUp="false"/>
            <repeat value="1" repeats="1" field="ab32-c9b6-10f3-cbdb" scope="force" childId="8d99-053d-ffeb-98c5" shared="true" roundUp="false"/>
          </repeats>
        </modifier>
      </modifiers>
    </categoryEntry>
    <categoryEntry name="Payload Groups" id="8c2b-ea4d-8bea-c6a2" hidden="false"/>
    <categoryEntry name="Colossal Ship" id="6e44-cb75-e25f-8b24" hidden="false"/>
    <categoryEntry name="Heavy Ship" id="9d6f-26b0-7969-496b" hidden="false"/>
    <categoryEntry name="Medium Ship" id="53c3-afc0-63ef-413a" hidden="false"/>
    <categoryEntry name="Light Ship" id="f942-8f88-d77b-13c1" hidden="false"/>
    <categoryEntry name="Payload" id="3fa9-60d3-d9be-6611" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Fleet" hidden="false" id="fa3c-5c2f-ae78-ba22">
      <categoryLinks>
        <categoryLink name="Group" hidden="false" id="a2b1-5bf7-6d35-858c" targetId="default-category"/>
        <categoryLink name="Configuration" hidden="false" id="6c0e-eeab-b788-eedb" targetId="8a9e-8399-ae64-5be9"/>
        <categoryLink name="Admirals" hidden="false" id="01e1-b327-59c7-0a0b" targetId="fb8b-57b3-d46c-d679">
          <constraints>
            <constraint type="max" value="0" field="selections" scope="force" shared="true" id="5981-16e9-e835-06d1"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="5981-16e9-e835-06d1">
              <repeats>
                <repeat value="1" repeats="1" field="selections" scope="roster" childId="53c3-afc0-63ef-413a" shared="true" roundUp="false" includeChildSelections="true"/>
                <repeat value="1" repeats="1" field="selections" scope="roster" childId="9d6f-26b0-7969-496b" shared="true" roundUp="false" includeChildSelections="true"/>
                <repeat value="1" repeats="1" field="selections" scope="roster" childId="6e44-cb75-e25f-8b24" shared="true" roundUp="false" includeChildSelections="true"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Colossal Groups" hidden="false" id="38b2-ab85-cf30-7c97" targetId="52fa-6578-d171-57d6"/>
        <categoryLink name="Heavy Groups" hidden="false" id="6ae6-148d-4a39-919c" targetId="8d99-053d-ffeb-98c5"/>
        <categoryLink name="Medium Groups" hidden="false" id="62fc-b5b7-b670-4429" targetId="e555-ff57-c478-18cd"/>
        <categoryLink name="Light Groups" hidden="false" id="27be-f8fa-6328-ee30" targetId="f51b-d892-62c0-3f1e"/>
        <categoryLink name="Payload Groups" hidden="false" id="7362-17e3-5fb1-9a39" targetId="8c2b-ea4d-8bea-c6a2"/>
      </categoryLinks>
      <constraints>
        <constraint type="min" value="501" field="ab32-c9b6-10f3-cbdb" scope="self" shared="true" id="0657-bf3e-e983-c5e7"/>
        <constraint type="max" value="1000" field="ab32-c9b6-10f3-cbdb" scope="self" shared="true" id="3538-1a51-bb11-860d"/>
        <constraint type="min" value="1" field="forces" scope="roster" shared="true" id="8431-eb6d-c04d-8f41-min" includeChildSelections="true"/>
        <constraint type="max" value="1" field="forces" scope="roster" shared="true" id="8431-eb6d-c04d-8f41-max" includeChildSelections="true"/>
      </constraints>
      <modifierGroups>
        <modifierGroup type="and">
          <modifiers>
            <modifier type="set" value="1001" field="0657-bf3e-e983-c5e7"/>
            <modifier type="set" value="2000" field="3538-1a51-bb11-860d"/>
          </modifiers>
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="3fda-65f2-6cc3-ee33" shared="true" includeChildSelections="true"/>
          </conditions>
        </modifierGroup>
        <modifierGroup type="and">
          <modifiers>
            <modifier type="set" value="2001" field="0657-bf3e-e983-c5e7"/>
            <modifier type="set" value="3000" field="3538-1a51-bb11-860d"/>
          </modifiers>
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="c6ef-6271-e246-47a8" shared="true" includeChildSelections="true"/>
          </conditions>
        </modifierGroup>
        <modifierGroup type="and">
          <modifiers>
            <modifier type="set" value="3001" field="0657-bf3e-e983-c5e7"/>
            <modifier type="set" value="-1" field="3538-1a51-bb11-860d"/>
          </modifiers>
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="force" childId="d410-4aa8-c469-064b" shared="true" includeChildSelections="true"/>
          </conditions>
        </modifierGroup>
      </modifierGroups>
    </forceEntry>
  </forceEntries>
  <costTypes>
    <costType name="pts" id="ab32-c9b6-10f3-cbdb" defaultCostLimit="-1"/>
  </costTypes>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup name="Game Size" id="1e1a-b867-1538-7a64" hidden="false" defaultSelectionEntryId="c6ef-6271-e246-47a8">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Skirmish" hidden="false" id="7895-d441-b903-8bb2" sortIndex="1"/>
        <selectionEntry type="upgrade" import="true" name="Clash" hidden="false" id="3fda-65f2-6cc3-ee33" sortIndex="2"/>
        <selectionEntry type="upgrade" import="true" name="Battle" hidden="false" id="c6ef-6271-e246-47a8" sortIndex="3"/>
        <selectionEntry type="upgrade" import="true" name="Reconquest" hidden="false" id="d410-4aa8-c469-064b" sortIndex="4"/>
      </selectionEntries>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="86f0-d3d8-5cde-7273-min" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="86f0-d3d8-5cde-7273-max" includeChildSelections="false"/>
      </constraints>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Game Size" hidden="false" id="71a0-476c-277b-1c28">
      <entryLinks>
        <entryLink import="true" name="Game Size" hidden="false" id="f047-8554-71ea-10f4" type="selectionEntryGroup" targetId="1e1a-b867-1538-7a64"/>
      </entryLinks>
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="494c-03f1-1565-4aa9-min" includeChildSelections="false"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="494c-03f1-1565-4aa9-max" includeChildSelections="false"/>
      </constraints>
      <categoryLinks>
        <categoryLink targetId="8a9e-8399-ae64-5be9" id="4b1f-78ba-b6cc-2dc2" primary="true" name="Configuration"/>
      </categoryLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Admiral (Lvl 2)" hidden="false" id="c2e3-744c-214a-624e">
      <costs>
        <cost name="pts" typeId="ab32-c9b6-10f3-cbdb" value="20"/>
      </costs>
      <categoryLinks>
        <categoryLink targetId="fb8b-57b3-d46c-d679" id="d279-4b1a-eb65-2a64" primary="true" name="Admirals"/>
      </categoryLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Admiral (Lvl 3)" hidden="false" id="6d39-b64d-ed12-d1b4">
      <costs>
        <cost name="pts" typeId="ab32-c9b6-10f3-cbdb" value="40"/>
      </costs>
      <constraints>
        <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="4576-1eaa-8baa-f400"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="-1" field="4576-1eaa-8baa-f400">
          <conditions>
            <condition type="equalTo" value="0" field="selections" scope="force" childId="7895-d441-b903-8bb2" shared="true" includeChildSelections="true" includeChildForces="true"/>
          </conditions>
        </modifier>
      </modifiers>
      <categoryLinks>
        <categoryLink targetId="fb8b-57b3-d46c-d679" id="8ccd-72a3-4a43-0f9a" primary="true" name="Admirals"/>
      </categoryLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Admiral (Lvl 4)" hidden="false" id="15ed-22eb-2e08-32e3">
      <costs>
        <cost name="pts" typeId="ab32-c9b6-10f3-cbdb" value="60"/>
      </costs>
      <constraints>
        <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="b826-7cde-7053-02af"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="-1" field="b826-7cde-7053-02af">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="equalTo" value="0" field="selections" scope="force" childId="7895-d441-b903-8bb2" shared="true" includeChildSelections="true" includeChildForces="true"/>
                <condition type="equalTo" value="0" field="selections" scope="force" childId="3fda-65f2-6cc3-ee33" shared="true" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <categoryLinks>
        <categoryLink targetId="fb8b-57b3-d46c-d679" id="873e-e01f-4fb3-58d5" primary="true" name="Admirals"/>
      </categoryLinks>
    </selectionEntry>
  </sharedSelectionEntries>
  <entryLinks>
    <entryLink import="true" name="Game Size" hidden="false" id="bb40-2353-6ff5-0468" targetId="71a0-476c-277b-1c28" type="selectionEntry"/>
    <entryLink import="true" name="Admiral (Lvl 2)" hidden="false" id="7d94-9e0f-7676-288a" targetId="c2e3-744c-214a-624e" type="selectionEntry"/>
    <entryLink import="true" name="Admiral (Lvl 3)" hidden="false" id="3bcf-f613-6677-4a35" targetId="6d39-b64d-ed12-d1b4" type="selectionEntry"/>
    <entryLink import="true" name="Admiral (Lvl 4)" hidden="false" id="4e39-4406-1f57-84c1" targetId="15ed-22eb-2e08-32e3" type="selectionEntry"/>
  </entryLinks>
  <profileTypes>
    <profileType name="Ship" id="8a2d-efd5-4b60-f4fa" hidden="false" sortIndex="1">
      <characteristicTypes>
        <characteristicType name="Thrust" id="d821-4294-3117-e8a6"/>
        <characteristicType name="Scan" id="960a-5d0e-18c5-4310"/>
        <characteristicType name="Sig" id="4feb-14c2-b1f1-9fa5"/>
        <characteristicType name="Hull" id="5253-be1d-917b-17d9"/>
        <characteristicType name="ES" id="42ae-03c9-d0ff-61da"/>
        <characteristicType name="KS" id="a4d4-4c63-1848-24f8"/>
        <characteristicType name="BS" id="05b6-9825-68e8-4983"/>
        <characteristicType name="G" id="32ce-7bbb-1d0f-8c80"/>
        <characteristicType name="Special" id="fdf5-89b6-e62e-570f"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon" id="02b7-2433-f72f-d510" hidden="false" sortIndex="3">
      <characteristicTypes>
        <characteristicType name="Arc" id="7fb7-39ec-1352-3b97"/>
        <characteristicType name="Att" id="af4e-6eec-3cb5-5aae"/>
        <characteristicType name="Lock" id="ddfe-5610-8f1a-650d"/>
        <characteristicType name="Dmg" id="31b1-2e8b-0b99-b1c7"/>
        <characteristicType name="Type" id="8f83-3218-7832-0818"/>
        <characteristicType name="Special" id="1e8b-4801-6eb9-f278"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Load" id="7ba8-a64f-b5fb-8c3e" hidden="false" sortIndex="4">
      <characteristicTypes>
        <characteristicType name="Launch" id="bcc4-f844-acff-aa94"/>
        <characteristicType name="Special" id="d3be-1a27-21ac-fb65"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Feature" id="e69b-d424-94a2-0fe1" hidden="false" sortIndex="2">
      <characteristicTypes>
        <characteristicType name="ES" id="b3be-7f64-867b-94f7"/>
        <characteristicType name="KS" id="4e0b-e781-cee2-504d"/>
        <characteristicType name="Special" id="0042-a956-225d-9293"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedRules>
    <rule name="Aegis-X" id="9cd1-441e-8ee8-7f13" hidden="false" page="36" publicationId="45b0-3e3b-e83d-fd70">
      <alias>Aegis-4</alias>
      <alias>Aegis-8</alias>
      <description>Ships within X” may re-roll failed Kinetic Save rolls.</description>
    </rule>
    <rule name="Cloak-X" id="69fa-32f1-0a4f-c052" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>This Group may have a maximum of X Spikes.</description>
      <alias>Cloak-1</alias>
    </rule>
    <rule name="Command Ship-X" id="af88-13e6-5004-d00a" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <alias>Command Ship-1</alias>
      <alias>Command Ship-2</alias>
      <description>Increase the Level of any Admiral assigned to this Ship by X.</description>
    </rule>
    <rule name="Descent" id="2ae8-7705-ab9a-03c0" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>This special rule confers various benefits covered in the core rules.</description>
    </rule>
    <rule name="Detector" id="ff6a-7b9f-fca1-ef36" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>If this Ship is on an order that allows it to attack, this Ship may forgo one allowed Weapon use during its activation. If it does, at the end of its activation place two Spikes on an enemy Group in line of sight.</description>
    </rule>
    <rule name="Escort" id="03da-77d7-bd73-eeb4" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>When a friendly Ship of H or C tonnage within 6” of this Ship on the same Orbital Layer is attacked, you may allocate all hits from that attack to this Ship’s Group, even if it is out of range, arc, and line of sight of the attacking Group. Only the effects of Scenery to the original target apply.</description>
    </rule>
    <rule name="Gateship-X" id="4572-00d5-81d2-4fcc" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>Shaltari Motherships must launch their Dropships via a Ship with this rule. Each Ship with Gateship can have up to X Dropships deployed from it each round. Note: though the launch is measured from the Ship with the Gateship rule, it is the Mothership that is launching</description>
    </rule>
    <rule name="Marines-X" id="93f3-7932-b233-4d38" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>Remove X enemy Battalions from this Ship at the beginning of the Battalion Combat step.</description>
      <alias>Marines-1</alias>
      <alias>Marines-2</alias>
    </rule>
    <rule name="Monitor" id="cc9f-9be5-cc19-2fc9" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>Ships with this rule may not use Course Change or Max Thrust orders.</description>
    </rule>
    <rule name="Mothership" id="928d-4467-6cc7-1771" hidden="false">
      <description>Shaltari Motherships can only deploy their Dropships via friendly Ships with the Gateship-X special rule. These Ships must be within 18” of the Mothership or part of a chain of Gateship-X Ships with each Ship in the chain being within 18” of another. Note: though the launch is measured from the Gateship, it is the Mothership that is launching.</description>
    </rule>
    <rule name="Payload S/L-X" id="7a4f-55fd-3916-978f" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="36">
      <description>When building your fleet, you may choose as many Payload Ships as you like— tonnage limits do not apply to these Ships, and they have no Group size. All Payload S/L Ships must be assigned to a Porter S/L Ship with the same letter. Payload Ships may not activate or be targeted until detached.
During the Porter Ship’s activation, if it is on an Order that allows it to Launch, you may detach one or more of its Payload Ships and place them within 3” of it. In the round they are detached, these Payloads activate together immediately as part of the Porter Ship’s activation after it has completed its Order. In subsequent rounds, all your Payload Ships count as being part of a single Group.
Payload Ships always follow General Quarters Orders, even if its Porter is on different Orders. Payload Ships ignore Coherency rules (and do not gain Formation Benefits), have no Lead Ship, are targeted by attacks individually, and these attacks can only damage the targeted Payload Ship.
If a Payload Ship is attached to a Porter Ship when that Ship is destroyed, the Payload Ship is destroyed.</description>
      <alias>Payload S-1</alias>
    </rule>
    <rule name="Porter S/L-X" id="11cb-e973-8a2c-f0f6" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Ship may be assigned up to X Payload Ships with the same letter.
During a Porter’s activation, it may attach any detached Payload Ships within 3” if it has available capacity. Payload Ships reattached to a Porter Ship are removed from the table to be deployed in a later round.</description>
      <alias>Porter S-1</alias>
      <alias>Porter S-2</alias>
    </rule>
    <rule name="Rapid Drop" id="8b74-2f05-9de9-8b32" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Ship may launch its Assets at any point during its movement</description>
    </rule>
    <rule name="Rare" id="f7ad-85f9-39f4-7e10" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>You may only take one Group of this Ship in a Skirmish-sized game, two in a Clash, three in a Battle, and four in a Reconquest.</description>
    </rule>
    <rule name="Regenerate-X" id="df32-1b16-f0f9-7b85" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Ship recovers X lost Hull Points at the end of its activation.</description>
    </rule>
    <rule name="Shield-X" id="40e4-1c82-9e61-c8c1" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>You may use a Shield Save instead of this Group’s Energy or Kinetic Save, declaring their use before any other saves are made. Shield saves can be used against any Damage Type and function like other saves. Modifiers to Energy or Kinetic Saves do not apply.
A Group gains a Spike each time it uses its Shield saves.</description>
    </rule>
    <rule name="Stealth" id="9306-4cd5-b59e-5898" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Ship may fire one Weapon while Silent Running.</description>
    </rule>
    <rule name="Unique" id="3f45-7047-464a-3be4" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>You may only take one Group of this Ship.</description>
    </rule>
    <rule name="Vectored" id="7a2f-fbe0-b3cd-98c8" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Ship may make an additional turn at any point during its movement, regardless of the Order its Group has taken.</description>
    </rule>
    <rule name="Air to Air" id="ceee-e18a-c60c-0ef5" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This weapon ignores the penalties for attacking Ships in Atmosphere while the attacking Ship is also in Atmosphere.</description>
    </rule>
    <rule name="Alt-X" id="f354-1b03-966f-f667" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>Only one Weapon with the same Alt number on the same Ship may be fired by that Ship each round.
All Alt Weapons with the same number count as the same Weapon when determining how many Weapons a Ship has.</description>
      <alias>Alt-1</alias>
    </rule>
    <rule name="Alt Launch" id="b63a-36ea-4020-10c5" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>In a round this Weapon is fired this Ship may not launch Assets.</description>
    </rule>
    <rule name="Arrest-X" id="7fa4-03e2-d2a7-de9b" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>A Ship damaged by this Weapon reduces its Thrust by X” during its next activation. A Ship can only be affected by this rule once each round.</description>
      <alias>Arrest-2</alias>
    </rule>
    <rule name="Bloom-X" id="a944-3ee8-9a6c-6440" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <alias>Bloom-1</alias>
      <alias>Bloom-2</alias>
      <description>Whenever you fire this Weapon (including separate attacks generated by the Volley-X special rule), the attacking Group gains X Spikes.</description>
    </rule>
    <rule name="Bombardment" id="858c-a2ff-ed65-3e47" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="37">
      <description>This Weapon ignores the penalties for attacking Cities and Ships in Atmosphere.
Improve the Lock of this Weapon by 2 when attacking Cities.</description>
    </rule>
    <rule name="Burnthrough-X" id="91ae-f561-0802-3f8e" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <alias>Burnthrough-1</alias>
      <alias>Burnthrough-2</alias>
      <description>Each of this Weapon’s critical hits reduces the target’s Energy/Kinetic Save by X for hits caused by this Weapon for this attack. Saves made for other Weapons are unaffected. Roll attacks separately for each Burnthrough Weapon.</description>
    </rule>
    <rule name="Calibre-X" id="aa1f-b200-394a-dbcf" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <alias>Calibre-L</alias>
      <alias>Calibre-H/C</alias>
      <description>Improve the Lock value of this Weapon by 1 when attacking Groups of any of the listed X Tonnage values.</description>
    </rule>
    <rule name="Close Action" id="3bd7-f459-761a-97ee" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>This Weapon may only be fired at targets within Scan range and on the same Orbital Layer as the attacking Ship.</description>
    </rule>
    <rule name="Corruptor-X" id="b495-5934-9bf1-d595" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>When this Weapon successfully inflicts damage, place X Battalions on the target.</description>
    </rule>
    <rule name="Crippling-X" id="8b64-93ea-39c6-ab29" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>If this Weapon scores a Critical hit and then damages a Ship with that attack (following normal damage allocation rules), the damaged Ship gains the stated X Crippling Effect regardless of Tonnage. If no effect is listed, roll for Crippling Effects.
Crippling Effects caused by Crippling Weapons are in addition to the usual one per Ship. Duplicate effects are still ignored.</description>
      <alias>Crippling</alias>
    </rule>
    <rule name="Critical-X" id="7cc5-6830-9e54-6d11" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <alias>Critical-1</alias>
      <alias>Critical-2</alias>
      <description>Each of this Weapon’s criticals increases the damage of that hit by X.</description>
    </rule>
    <rule name="Escape Velocity" id="0357-837c-bc00-4ce3" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>This weapon ignores the penalty for attacking Ships in Orbit and treats all Ships in Atmosphere as non-Descent Ships, so only reduces its Lock by 1 when attacking Ships in Atmosphere.
Close Action weapons with this special rule may be used against targets in Orbit while the attacking Ship is in Atmosphere.</description>
    </rule>
    <rule name="Flash-X" id="9e6d-bb41-7c8b-a3b6" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>When this Weapon damages a Ship, that Ship gains X Spikes.</description>
      <alias>Flash-1</alias>
      <alias>Flash-2</alias>
    </rule>
    <rule name="Focused" id="464a-0e99-0229-5190" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>Instead of the normal potential targets for Weapons, this Weapon’s potential targets are either:
 • A single enemy Ship.
 • A Dropsite containing no friendly Battalions.
Damage caused by this Weapon is allocated to only the targeted Ship.</description>
    </rule>
    <rule name="Fusillade-X" id="4f05-4fdc-fad2-c566" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <alias>Fusillade-1</alias>
      <alias>Fusillade-2</alias>
      <alias>Fusillade-3</alias>
      <alias>Fusillade-4</alias>
      <description>This Weapon increases its Attack value by X while its Ship is on Weapons Free.</description>
    </rule>
    <rule name="High Power" id="4a8c-aae4-c959-2437" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>Attacking with this Weapon counts as attacking with two Weapons (though it only fires once).</description>
    </rule>
    <rule name="Impel-X" id="9944-ada1-19c8-2d06" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>If the attacking Group scores at least X critical hits against the target Group, turn all Ships in the targeted Group up to 45 degrees in the same direction. A Group can only be affected by this rule once per attack.</description>
    </rule>
    <rule name="Limited-X" id="0c02-c41a-e1a2-882e" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="38">
      <description>This Weapon can only be fired X times per game.
You may launch a total of X of this Asset per game.</description>
      <alias>Limited-2</alias>
    </rule>
    <rule name="Linked-X" id="fc9b-53d4-3bb3-3413" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>Weapons with the same Linked-X value on the same Ship count as 1 Weapon for Orders purposes. When you attack with a Linked-X Weapon, you attack with all other Weapons on that Ship with the same Linked-X value.</description>
    </rule>
    <rule name="Low Power" id="2851-2293-e346-839f" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>If a Ship’s Orders allow it to fire Close Action Weapons, it may attack with one Low Power Weapon in addition to any other Weapons allowed by its Order.</description>
    </rule>
    <rule name="Mauler" id="c093-8c13-6119-8d37" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>The Lock value of this Weapon is equal to the save the target would use to defend against it.</description>
    </rule>
    <rule name="Overcharge" id="33e5-a091-cbf5-4765" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>Before assigning Weapons to targets, you may double the Damage value of this Weapon. If you do, this becomes a High Power Weapon for this activation and each attack roll of 6 causes that attacking Ship to lose this Weapon’s unmodified Damage value in hull points. Only one Weapon per Ship may benefit from this rule per activation.</description>
    </rule>
    <rule name="Penetrator" id="fa34-1759-4681-18db" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>Each of this Weapon’s critical hits cause a Core hit instead of its normal Damage Type.</description>
    </rule>
    <rule name="Re-Entry" id="3438-1fc6-047d-47ad" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>This weapon ignores the penalties for attacking Ships in Atmosphere while the attacking Ship is in Orbit.
Close Action weapons with this special rule may be used against targets in Atmosphere while the attacking Ship is in Orbit.</description>
    </rule>
    <rule name="Scald-X" id="41b3-55a2-8d71-ee88" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <alias>Scald-1</alias>
      <alias>Scald-2</alias>
      <description>If this Weapon attacks a target within Scan range, reduce the target’s Energy/ Kinetic Save against that attack by X.</description>
    </rule>
    <rule name="Status" id="ea58-a80c-c3de-e165" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>When you hit with this Weapon, place your choice of one of the following tokens on the target Ship: Defence Systems Offline, Scanners Offline, or Navigation Offline. This token is automatically removed before making repairs.</description>
    </rule>
    <rule name="Sustained Fire" id="52ba-6610-b0f0-92d3" hidden="false" publicationId="45b0-3e3b-e83d-fd70" page="39">
      <description>If this Weapon attacks a target Group it hit in the previous round, double its Attack value for this attack.</description>
    </rule>
    <rule name="Volley-X" id="2313-61f3-8840-3e8b" hidden="false" page="39" publicationId="45b0-3e3b-e83d-fd70">
      <alias>Volley-2</alias>
      <description>This Weapon counts as 1 Weapon for Orders purposes. When you assign this Weapon to a target, you assign it to targets up to X times (either the same or different). Once assigned, treat each separate allocation as a separate Weapon profile for the subsequent steps in the attack sequence.
Broadside Weapons using Volley must alternate arcs when determining and assigning targets (so cannot target the same Group on the same side twice in a row).</description>
    </rule>
  </sharedRules>
  <publications>
    <publication name="Dropfleet Commander Rulebook (241017)" id="45b0-3e3b-e83d-fd70" hidden="false" shortName="DFC Rulebook (241017)"/>
  </publications>
</gameSystem>
