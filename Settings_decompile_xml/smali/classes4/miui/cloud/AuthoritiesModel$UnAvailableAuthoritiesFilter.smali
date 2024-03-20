.class Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;
.super Ljava/lang/Object;
.source "AuthoritiesModel.java"

# interfaces
.implements Lmiui/cloud/AuthoritiesModel$IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/AuthoritiesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnAvailableAuthoritiesFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cloud/AuthoritiesModel$1;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>()V

    return-void
.end method

.method private getPkgInfoNotExistAuthorities(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 184
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 185
    invoke-static {p1, v6}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v4, :cond_0

    .line 191
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public filter(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.xiaomi.mms.providers.SmsProvider"

    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.miui.player.cloud"

    .line 129
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.miui.player"

    .line 130
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "support_google_csp_sync"

    .line 132
    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-static {p1, v1}, Lmiui/cloud/AuthoritiesModel;->isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0, p1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;->getPkgInfoNotExistAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 141
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 143
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasSmsCapability(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "sms"

    if-nez p0, :cond_2

    .line 144
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasVoiceCapability(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "call_log"

    .line 148
    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    invoke-static {}, Lmiui/cloud/util/SysHelper;->hasModemCapability()Z

    move-result p0

    const-string p1, "antispam"

    if-nez p0, :cond_4

    .line 152
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_4
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 156
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_5
    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    move-result p0

    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->get_USER_OWNER()I

    move-result v1

    if-eq p0, v1, :cond_6

    .line 161
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    const-string p0, "com.miui.browser"

    .line 168
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "com.miui.browser.global"

    .line 169
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-void
.end method
