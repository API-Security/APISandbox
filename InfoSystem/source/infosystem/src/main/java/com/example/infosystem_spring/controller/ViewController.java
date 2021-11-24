package com.example.infosystem_spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/console/")
public class ViewController {

    private static final Logger log = LoggerFactory.getLogger(ViewController.class);

    @RequestMapping(value = "view/sysconfig/setconfig", method = RequestMethod.GET)
    String setconfig() {
        log.info("# loding view/sysconfig/setconfig ");
        return "view/sysconfig/setconfig";
    }

    @RequestMapping(value = "view/sysconfig/signin", method = RequestMethod.GET)
    String signin() {
        log.info("# loding view/sysconfig/signin ");
        return "view/sysconfig/signin";
    }

    @RequestMapping(value = "view/tenant/tenant-list", method = RequestMethod.GET)
    String tenant_list() {
        log.info("# loding view/tenant/tenant-list ");
        return "view/tenant/tenant-list";
    }

    @RequestMapping(value = "view/tenant/tenant-add", method = RequestMethod.GET)
    String tenant_add() {
        log.info("# loding view/tenant/tenant-add ");
        return "view/tenant/tenant-add";
    }

    @RequestMapping(value = "view/tenantConfig/list", method = RequestMethod.GET)
    String tenantConfig_list() {
        log.info("# loding view/tenantConfig/list ");
        return "view/tenantConfig/list";
    }

    @RequestMapping(value = "view/city/add2", method = RequestMethod.GET)
    String city_add2() {
        log.info("# loding view/city/add2 ");
        return "view/city/add2";
    }

    @RequestMapping(value = "view/city/list", method = RequestMethod.GET)
    String city_list() {
        log.info("# loding view/city/list ");
        return "view/city/list";
    }

    @RequestMapping(value = "view/user/user_list", method = RequestMethod.GET)
    String user_list() {
        log.info("# loding view/user/user_list");
        return "view/user/user_list";
    }

    @RequestMapping(value = "view/project/openProject", method = RequestMethod.GET)
    String openProject() {
        log.info("# loding view/project/openProject");
        return "view/project/openProject";
    }

    @RequestMapping(value = "view/project/list", method = RequestMethod.GET)
    String project_list() {
        log.info("# loding view/project/list");
        return "view/project/list";
    }

    @RequestMapping(value = "view/project/view", method = RequestMethod.GET)
    String project_view() {
        log.info("# loding view/project/view");
        return "view/project/view";
    }

    @RequestMapping(value = "view/project/manager_list", method = RequestMethod.GET)
    String manager_list() {
        log.info("# loding view/project/manager_list");
        return "view/project/manager_list";
    }

    @RequestMapping(value = "view/project/add", method = RequestMethod.GET)
    String project_add() {
        log.info("# loding view/project/add");
        return "view/project/add";
    }

    @RequestMapping(value = "view/project/add2", method = RequestMethod.GET)
    String project_add2() {
        log.info("# loding view/project/add2");
        return "view/project/add2";
    }

    @RequestMapping(value = "view/project/add3", method = RequestMethod.GET)
    String project_add3() {
        log.info("# loding view/project/add3");
        return "view/project/add3";
    }

    @RequestMapping(value = "view/project/add4", method = RequestMethod.GET)
    String project_add4() {
        log.info("# loding view/project/add4");
        return "view/project/add4";
    }

    @RequestMapping(value = "view/project/add5", method = RequestMethod.GET)
    String project_add5() {
        log.info("# loding view/project/add5");
        return "view/project/add5";
    }

    @RequestMapping(value = "view/project/add6", method = RequestMethod.GET)
    String project_add6() {
        log.info("# loding view/project/add6");
        return "view/project/add6";
    }

    @RequestMapping(value = "view/project/add7", method = RequestMethod.GET)
    String project_add7() {
        log.info("# loding view/project/add7");
        return "view/project/add7";
    }

    @RequestMapping(value = "view/project/add8", method = RequestMethod.GET)
    String project_add8() {
        log.info("# loding view/project/add8");
        return "view/project/add8";
    }

    @RequestMapping(value = "view/project/add9", method = RequestMethod.GET)
    String project_add9() {
        log.info("# loding view/project/add9");
        return "view/project/add9";
    }

    @RequestMapping(value = "view/project/edit_list", method = RequestMethod.GET)
    String project_edit_list() {
        log.info("# loding view/project/edit_list");
        return "view/project/edit_list";
    }

    @RequestMapping(value = "view/project/add_hezuo", method = RequestMethod.GET)
    String project_add_hezuo() {
        log.info("# loding view/project/add_hezuo");
        return "view/project/add_hezuo";
    }

    @RequestMapping(value = "view/agent/list", method = RequestMethod.GET)
    String agent_list() {
        log.info("# loding view/agent/list");
        return "view/agent/list";
    }

    @RequestMapping(value = "view/agent/custAgent", method = RequestMethod.GET)
    String agent_custAgent() {
        log.info("# loding view/agent/custAgent");
        return "view/agent/custAgent";
    }

    @RequestMapping(value = "view/agent/com_list", method = RequestMethod.GET)
    String agent_com_list() {
        log.info("# loding view/agent/com_list");
        return "view/agent/com_list";
    }

    @RequestMapping(value = "view/agent/namelist", method = RequestMethod.GET)
    String agent_namelist() {
        log.info("# loding view/agent/namelist");
        return "view/agent/namelist";
    }

    @RequestMapping(value = "view/agent/card", method = RequestMethod.GET)
    String agent_card() {
        log.info("# loding view/agent/card");
        return "view/agent/card";
    }

    @RequestMapping(value = "view/agent/grain", method = RequestMethod.GET)
    String agent_grain() {
        log.info("# loding view/agent/grain");
        return "view/agent/grain";
    }

    @RequestMapping(value = "view/agent/grain_list", method = RequestMethod.GET)
    String grain_list() {
        log.info("# loding view/agent/grain_list");
        return "view/agent/grain_list";
    }

    @RequestMapping(value = "view/adviserProject/adviserAuditList", method = RequestMethod.GET)
    String adviserAuditList() {
        log.info("# loding view/adviserProject/adviserAuditList");
        return "view/adviserProject/adviserAuditList";
    }

    @RequestMapping(value = "view/adviser/list", method = RequestMethod.GET)
    String adviser_list() {
        log.info("# loding view/adviser/list");
        return "view/adviser/list";
    }

    @RequestMapping(value = "view/adviser/namelist", method = RequestMethod.GET)
    String adviser_namelist() {
        log.info("# loding view/adviser/namelist");
        return "view/adviser/namelist";
    }

    @RequestMapping(value = "view/adviser/card", method = RequestMethod.GET)
    String adviser_card() {
        log.info("# loding view/adviser/card");
        return "view/adviser/card";
    }

    @RequestMapping(value = "view/adviser/grain", method = RequestMethod.GET)
    String adviser_grain() {
        log.info("# loding view/adviser/grain");
        return "view/adviser/grain";
    }

    @RequestMapping(value = "view/pos/bind", method = RequestMethod.GET)
    String pos_bind() {
        log.info("# loding view/pos/bind");
        return "view/pos/bind";
    }

    @RequestMapping(value = "view/pos/list", method = RequestMethod.GET)
    String pos_list() {
        log.info("# loding view/pos/list");
        return "view/pos/list";
    }

    @RequestMapping(value = "view/pos/poslog", method = RequestMethod.GET)
    String pos_poslog() {
        log.info("# loding view/pos/poslog");
        return "view/pos/poslog";
    }

    @RequestMapping(value = "view/data/statIncome_data", method = RequestMethod.GET)
    String statIncome_data() {
        log.info("# loding view/data/statIncome_data");
        return "view/data/statIncome_data";
    }

    @RequestMapping(value = "view/agreement/list", method = RequestMethod.GET)
    String agreement_list() {
        log.info("# loding view/agreement/list");
        return "view/agreement/list";
    }

    @RequestMapping(value = "view/agreement/rengou", method = RequestMethod.GET)
    String agreement_rengou() {
        log.info("# loding view/agreement/rengou");
        return "view/agreement/rengou";
    }

    @RequestMapping(value = "view/agreement/qianyue", method = RequestMethod.GET)
    String agreement_qianyue() {
        log.info("# loding view/agreement/qianyue");
        return "view/agreement/qianyue";
    }

    @RequestMapping(value = "view/agreement/edit", method = RequestMethod.GET)
    String agreement_edit() {
        log.info("# loding view/agreement/edit");
        return "view/agreement/edit";
    }

    @RequestMapping(value = "view/agreement/view", method = RequestMethod.GET)
    String agreement_view() {
        log.info("# loding view/agreement/view");
        return "view/agreement/view";
    }

    @RequestMapping(value = "view/firm/list", method = RequestMethod.GET)
    String firm_list() {
        log.info("# loding view/firm/list");
        return "view/firm/list";
    }

    @RequestMapping(value = "view/firm/edit", method = RequestMethod.GET)
    String firm_edit() {
        log.info("# loding view/firm/edit");
        return "view/firm/edit";
    }

    @RequestMapping(value = "view/firm/verify", method = RequestMethod.GET)
    String firm_verify() {
        log.info("# loding view/firm/verify");
        return "view/firm/verify";
    }

    @RequestMapping(value = "view/firm/list2", method = RequestMethod.GET)
    String firm_list2() {
        log.info("# loding view/firm/list2");
        return "view/firm/list2";
    }

    @RequestMapping(value = "view/firm/view", method = RequestMethod.GET)
    String firm_view() {
        log.info("# loding view/firm/view");
        return "view/firm/view";
    }

    @RequestMapping(value = "view/firm/account", method = RequestMethod.GET)
    String firm_account() {
        log.info("# loding view/firm/account");
        return "view/firm/account";
    }

    @RequestMapping(value = "view/commission/agentCommission", method = RequestMethod.GET)
    String agentCommission() {
        log.info("# loding view/commission/agentCommission");
        return "view/commission/agentCommission";
    }

    @RequestMapping(value = "view/commission/commissionExt", method = RequestMethod.GET)
    String commissionExt() {
        log.info("# loding view/commission/commissionExt");
        return "view/commission/commissionExt";
    }

    @RequestMapping(value = "view/commission/list", method = RequestMethod.GET)
    String commission_list() {
        log.info("# loding view/commission/list");
        return "view/commission/list";
    }

    @RequestMapping(value = "view/commission/auditList", method = RequestMethod.GET)
    String commission_auditList() {
        log.info("# loding view/commission/auditList");
        return "view/commission/auditList";
    }

    @RequestMapping(value = "view/commission/she", method = RequestMethod.GET)
    String commission_she() {
        log.info("# loding view/commission/she");
        return "view/commission/she";
    }

    @RequestMapping(value = "view/commission/Ext", method = RequestMethod.GET)
    String commission_Ext() {
        log.info("# loding view/commission/Ext");
        return "view/commission/Ext";
    }

    @RequestMapping(value = "view/custintent/custAuditList", method = RequestMethod.GET)
    String custAuditList() {
        log.info("# loding view/custintent/custAuditList");
        return "view/custintent/custAuditList";
    }

    @RequestMapping(value = "view/custintent/custSupport", method = RequestMethod.GET)
    String custSupport() {
        log.info("# loding view/custintent/custSupport");
        return "view/custintent/custSupport";
    }

    @RequestMapping(value = "view/custintent/view", method = RequestMethod.GET)
    String custintent_view() {
        log.info("# loding view/custintent/view");
        return "view/custintent/view";
    }

    @RequestMapping(value = "view/devpSubsidy/list", method = RequestMethod.GET)
    String devpSubsidy_list() {
        log.info("# loding view/devpSubsidy/list");
        return "view/devpSubsidy/list";
    }

    @RequestMapping(value = "view/devpSubsidy/list2", method = RequestMethod.GET)
    String devpSubsidy_list2() {
        log.info("# loding view/devpSubsidy/list2");
        return "view/devpSubsidy/list2";
    }

    @RequestMapping(value = "view/push/list", method = RequestMethod.GET)
    String push_list() {
        log.info("# loding view/push/list");
        return "view/push/list";
    }

    @RequestMapping(value = "view/code/code", method = RequestMethod.GET)
    String code_code() {
        log.info("# loding view/code/code");
        return "view/code/code";
    }

    @RequestMapping(value = "view/code/telcode", method = RequestMethod.GET)
    String code_telcode() {
        log.info("# loding view/code/telcode");
        return "view/code/telcode";
    }

    @RequestMapping(value = "view/adv/list", method = RequestMethod.GET)
    String adv_list() {
        log.info("# loding view/adv/list");
        return "view/adv/list";
    }

    @RequestMapping(value = "view/refund/list", method = RequestMethod.GET)
    String refund_list() {
        log.info("# loding view/refund/list");
        return "view/refund/list";
    }

    @RequestMapping(value = "view/refund/view", method = RequestMethod.GET)
    String refund_view() {
        log.info("# loding view/refund/view");
        return "view/refund/view";
    }

}
