.class public Lcom/android/settings/MiuiSettings$HeaderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/MiuiSettings$HeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFrequently:Z

.field private mIsMIUILite:Z

.field private mLocale:Ljava/util/Locale;

.field private mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

.field private mSettingsControllerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/settings/BaseSettingsController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/MiuiSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaders(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiHomeManager(Lcom/android/settings/MiuiSettings$HeaderAdapter;)Lcom/android/settings/cust/MiHomeManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAdminDisallowedConfig(Lcom/android/settings/MiuiSettings$HeaderAdapter;Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->updateAdminDisallowedConfig(Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MiuiSettings;Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/List;Lcom/android/settingslib/accounts/AuthenticatorHelper;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Z)V"
        }
    .end annotation

    .line 1555
    iput-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1556
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1557
    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    .line 1558
    iput-object p4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAuthHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    const-string p3, "layout_inflater"

    .line 1559
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1560
    iput-boolean p5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mIsFrequently:Z

    .line 1561
    iget-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settings/cust/MiHomeManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/cust/MiHomeManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    .line 1563
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mLocale:Ljava/util/Locale;

    .line 1565
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    .line 1566
    sget p4, Lcom/android/settings/R$id;->wifi_settings:I

    int-to-long p4, p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-instance p5, Lcom/android/settings/wifi/WifiStatusController;

    const/4 v0, 0x0

    invoke-direct {p5, p2, v0}, Lcom/android/settings/wifi/WifiStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    iget-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p4, Lcom/android/settings/R$id;->bluetooth_settings:I

    int-to-long p4, p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-instance p5, Lcom/android/settings/bluetooth/BluetoothStatusController;

    invoke-direct {p5, p2, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    iget-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p4, Lcom/android/settings/R$id;->wifi_tether_settings:I

    int-to-long p4, p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-instance p5, Lcom/android/settings/restriction/TetherRestrictionController;

    invoke-direct {p5, p2, v0}, Lcom/android/settings/restriction/TetherRestrictionController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    sget-boolean p3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p3, :cond_0

    .line 1570
    new-instance p3, Lcom/android/settings/accounts/XiaomiAccountStatusController;

    invoke-direct {p3, p2, v0}, Lcom/android/settings/accounts/XiaomiAccountStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1571
    iget-object p4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p5, Lcom/android/settings/R$id;->micloud_settings:I

    int-to-long v1, p5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    .line 1574
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p3, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/android/settings/accounts/XiaomiAccountInfoController;

    invoke-direct {p4, p2, v0}, Lcom/android/settings/accounts/XiaomiAccountInfoController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p3, Lcom/android/settings/R$id;->font_settings:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/android/settings/display/FontStatusController;

    invoke-direct {p4, p2, v0}, Lcom/android/settings/display/FontStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p3, Lcom/android/settings/R$id;->my_device:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/android/settings/device/DeviceStatusController;

    invoke-direct {p4, p2, v0}, Lcom/android/settings/device/DeviceStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p3, Lcom/android/settings/R$id;->system_apps_updater:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/android/settings/applications/SystemAppUpdaterStatusController;

    iget-object p5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mLocale:Ljava/util/Locale;

    invoke-direct {p4, p2, v0, p5}, Lcom/android/settings/applications/SystemAppUpdaterStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/util/Locale;)V

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    sget p3, Lcom/android/settings/R$id;->msim_settings:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/android/settings/restriction/SimManagementRestrictionController;

    invoke-direct {p4, p2, v0}, Lcom/android/settings/restriction/SimManagementRestrictionController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->isMIUILite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mIsMIUILite:Z

    return-void
.end method

.method private getHeaderType(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)I
    .locals 4

    .line 1260
    iget-object v0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1262
    :cond_0
    iget-wide v0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v2, Lcom/android/settings/R$id;->my_device:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p0, 0x2

    return p0

    .line 1264
    :cond_1
    sget v2, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 p0, 0x6

    return p0

    .line 1266
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isWirelessHeader(J)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 1268
    :cond_3
    iget-wide p0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v0, Lcom/android/settings/R$id;->system_apps_updater:I

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private isAdapterVerticalSummary(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Z
    .locals 3

    .line 1349
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiSettings;->isDeviceAdapterVerticalSummary(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1350
    iget-wide p0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v1, Lcom/android/settings/R$id;->wifi_settings:I

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$id;->bluetooth_settings:I

    int-to-long v1, v1

    cmp-long p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private setEnable(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1659
    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v2, Lcom/android/settings/R$id;->my_device:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    sget v2, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_1

    .line 1664
    :cond_1
    sget p0, Lcom/android/settings/R$id;->msim_settings:I

    int-to-long v4, p0

    cmp-long p2, v0, v4

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v4, p0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_5

    .line 1665
    sget p0, Lcom/android/settings/R$id;->mobile_network_settings:I

    int-to-long v4, p0

    cmp-long p0, v0, v4

    if-nez p0, :cond_3

    goto :goto_0

    .line 1671
    :cond_3
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 1672
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1674
    :cond_4
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 1675
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 1666
    :cond_5
    :goto_0
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1667
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 1660
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1661
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isAdapterVerticalSummary(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1662
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setExtraPadding(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Landroid/view/View;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1484
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmAccountIconSize(Lcom/android/settings/MiuiSettings;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmNormalIconSize(Lcom/android/settings/MiuiSettings;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1485
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_account_avatar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1487
    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fputmAccountIconSize(Lcom/android/settings/MiuiSettings;I)V

    .line 1489
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->header_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fputmNormalIconSize(Lcom/android/settings/MiuiSettings;I)V

    .line 1492
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmAccountIconSize(Lcom/android/settings/MiuiSettings;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 1493
    iget-object v4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v4}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmNormalIconSize(Lcom/android/settings/MiuiSettings;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    float-to-int v2, v4

    add-int v3, v0, v2

    float-to-int v1, v1

    sub-int/2addr v3, v1

    .line 1497
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v2, p0

    sub-int/2addr v2, v1

    .line 1500
    iget-wide v4, p3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget p3, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v6, p3

    cmp-long p3, v4, v6

    const/4 v1, 0x0

    if-nez p3, :cond_4

    .line 1501
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v2, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1502
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p2, v1, p0, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1504
    :cond_4
    iget-object p1, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1505
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p2, v0, p0, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method private setRestrictionEnforced(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1644
    :cond_0
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    const/16 v0, 0x4d

    const/16 v1, 0xff

    if-eqz p0, :cond_2

    .line 1645
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz p2, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1647
    :cond_2
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 1648
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz p2, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1650
    :cond_4
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1651
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_6
    return-void
.end method

.method private setSelectedHeaderView(Lcom/android/settings/MiuiSettings$HeaderViewHolder;I)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1585
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmCurrentSelectedHeaderIndex(Lcom/android/settings/MiuiSettings;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    .line 1589
    iget-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1590
    iget-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1592
    :cond_1
    iget-object p2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fputmSelectedView(Lcom/android/settings/MiuiSettings;Landroid/view/View;)V

    .line 1593
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1595
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1596
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSelectedView(Lcom/android/settings/MiuiSettings;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 1599
    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateAdminDisallowItem(IZ)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iget-object v0, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iput-object v0, v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 1256
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string p1, "admin_disallow"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateAdminDisallowedConfig(Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;)V
    .locals 7

    .line 1228
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_mobile_networks"

    .line 1229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1228
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1230
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "no_config_tethering"

    .line 1231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1230
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1232
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p1, :cond_2

    goto :goto_4

    .line 1235
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1236
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-nez v3, :cond_3

    goto :goto_3

    .line 1240
    :cond_3
    iget-wide v3, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v5, Lcom/android/settings/R$id;->msim_settings:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    .line 1241
    invoke-direct {p0, v2, v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->updateAdminDisallowItem(IZ)V

    .line 1242
    invoke-virtual {p1, v2}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->updateItem(I)V

    goto :goto_3

    .line 1243
    :cond_4
    sget v5, Lcom/android/settings/R$id;->wifi_tether_settings:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 1244
    invoke-direct {p0, v2, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->updateAdminDisallowItem(IZ)V

    .line 1245
    invoke-virtual {p1, v2}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->updateItem(I)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
    .locals 0

    .line 1521
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1540
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 1541
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object p1

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)I

    move-result p0

    return p0
.end method

.method public isWirelessHeader(J)Z
    .locals 0

    .line 1276
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 1277
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1203
    check-cast p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->onBindViewHolder(Lcom/android/settings/MiuiSettings$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/MiuiSettings$HeaderViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_14

    .line 1357
    iget-object v3, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_6

    .line 1360
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object v3

    .line 1361
    invoke-direct {v0, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 1362
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_e

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v4, v7, :cond_3

    if-eq v4, v10, :cond_9

    const/4 v12, 0x3

    if-eq v4, v12, :cond_1

    const/4 v12, 0x5

    if-eq v4, v12, :cond_5

    const/4 v12, 0x6

    if-eq v4, v12, :cond_1

    goto/16 :goto_5

    .line 1385
    :cond_1
    iget-object v12, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v12, v11, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1386
    iget-object v12, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    iget-wide v13, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/BaseSettingsController;

    if-eqz v12, :cond_3

    .line 1388
    invoke-direct {v0, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isAdapterVerticalSummary(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1389
    iget-object v13, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    .line 1390
    iget-object v12, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    sget v13, Lcom/android/settings/R$style;->Miuix_AppCompat_TextAppearance_PreferenceRight:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 1392
    :cond_2
    iget-object v13, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    .line 1393
    iget-object v13, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1397
    :cond_3
    :goto_0
    iget-object v12, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1398
    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v13

    const-string/jumbo v14, "system_app"

    invoke-virtual {v14, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1399
    iget-object v13, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v13, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 1400
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v15, "."

    const-string v10, "_"

    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1401
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1402
    iget-object v12, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drawable"

    invoke-virtual {v12, v10, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    .line 1404
    :cond_4
    iget-wide v12, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v10, Lcom/android/settings/R$id;->wifi_settings:I

    int-to-long v14, v10

    cmp-long v10, v12, v14

    if-nez v10, :cond_5

    iget-object v10, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v10}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmCurrentSelectedHeaderIndex(Lcom/android/settings/MiuiSettings;)I

    move-result v10

    if-ne v10, v9, :cond_5

    .line 1405
    iget-object v10, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v10, v2}, Lcom/android/settings/MiuiSettings;->-$$Nest$fputmCurrentSelectedHeaderIndex(Lcom/android/settings/MiuiSettings;I)V

    .line 1408
    :cond_5
    iget-wide v12, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v10, Lcom/android/settings/R$id;->system_apps_updater:I

    int-to-long v14, v10

    cmp-long v10, v12, v14

    if-nez v10, :cond_7

    .line 1409
    iget-object v10, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/BaseSettingsController;

    .line 1410
    iget-object v11, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "updatable_system_app_count"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1412
    iget-object v12, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v12}, Lcom/android/settings/device/UpdateBroadcastManager;->getAppsAutoUpdateSuperscript(Landroid/content/Context;)I

    move-result v12

    add-int/2addr v11, v12

    .line 1413
    iget-object v12, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    if-lez v11, :cond_6

    move v13, v8

    goto :goto_1

    :cond_6
    move v13, v6

    :goto_1
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1414
    iget-object v12, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mLocale:Ljava/util/Locale;

    invoke-static {v13}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    int-to-long v14, v11

    invoke-virtual {v13, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-object v11, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    sget v12, Lcom/android/settings/R$drawable;->tv_shape_circle:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1416
    iget-object v11, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1417
    iget-object v11, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1418
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v9, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1419
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    const-string/jumbo v11, "miui-light"

    invoke-static {v11, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1420
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 1421
    :cond_7
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 1422
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    const v10, 0x800005

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1424
    iget-object v9, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    iget-wide v10, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/BaseSettingsController;

    if-eqz v9, :cond_9

    .line 1426
    invoke-direct {v0, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isAdapterVerticalSummary(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1427
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1428
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    sget v11, Lcom/android/settings/R$style;->Miuix_AppCompat_TextAppearance_PreferenceRight:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1429
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 1431
    :cond_8
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    sget v11, Lcom/android/settings/R$style;->Miuix_AppCompat_TextAppearance_PreferenceRight:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1432
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    .line 1439
    :cond_9
    :goto_2
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object v9, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1441
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1442
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1445
    :cond_a
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    :goto_3
    invoke-direct {v0, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isAdapterVerticalSummary(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1448
    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1449
    iget-object v6, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    .line 1452
    iget-object v4, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/BaseSettingsController;

    .line 1453
    check-cast v4, Lcom/android/settings/device/DeviceStatusController;

    iget-object v6, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->arrowRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v9}, Lcom/android/settings/device/DeviceStatusController;->setUpTextView(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1455
    :cond_c
    iget-wide v9, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v4, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-nez v4, :cond_d

    .line 1456
    iget-object v4, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/BaseSettingsController;

    if-eqz v4, :cond_d

    .line 1458
    check-cast v4, Lcom/android/settings/accounts/XiaomiAccountInfoController;

    iget-object v6, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->value:Landroid/widget/TextView;

    .line 1459
    invoke-virtual {v4, v6, v9, v10, v11}, Lcom/android/settings/accounts/XiaomiAccountInfoController;->setUpTextView(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1462
    :cond_d
    invoke-direct {v0, v1, v5, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setExtraPadding(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Landroid/view/View;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    goto :goto_5

    .line 1365
    :cond_e
    iget-object v4, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v4, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1367
    iget-object v4, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_11

    const/4 v4, 0x4

    .line 1369
    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1370
    sget v4, Lcom/android/settings/R$drawable;->settings_preference_category_bg_no_title:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1373
    :cond_f
    iget-object v4, v1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_11

    if-nez v2, :cond_10

    .line 1377
    sget v4, Lcom/android/settings/R$drawable;->settings_preference_category_bg_first:I

    goto :goto_4

    .line 1378
    :cond_10
    sget v4, Lcom/android/settings/R$drawable;->settings_preference_category_bg:I

    .line 1376
    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1465
    :cond_11
    :goto_5
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setSelectedHeaderView(Lcom/android/settings/MiuiSettings$HeaderViewHolder;I)V

    .line 1466
    invoke-virtual {v0, v1, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setIcon(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    .line 1467
    invoke-direct {v0, v1, v3}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setEnable(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    .line 1468
    iget-object v4, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_12

    const-string v5, "admin_disallow"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v8, v7

    :cond_12
    if-eqz v8, :cond_13

    .line 1470
    invoke-direct {v0, v1, v7}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setRestrictionEnforced(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Z)V

    .line 1472
    :cond_13
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setClick(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V

    :cond_14
    :goto_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1203
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/MiuiSettings$HeaderViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/MiuiSettings$HeaderViewHolder;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    const v1, 0x1020018    # @android:id/widget_frame

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 v3, 0x6

    if-eq p2, v3, :cond_2

    .line 1326
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->miuix_preference_navigation_item:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->miuix_preference_main_layout:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1331
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 1333
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1334
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    sget v3, Lcom/android/settings/R$layout;->miuix_preference_widget_navigation_item_text:I

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_4

    .line 1337
    :cond_1
    sget v3, Lcom/android/settings/R$layout;->miuix_preference_widget_text:I

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1338
    sget p1, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1339
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->preference_text_right_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_4

    .line 1292
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1293
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->miuix_preference_navigation_item:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 1295
    :cond_3
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->miuix_preference_main_layout:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1297
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 1299
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1300
    iget-object v4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v4}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1301
    sget v4, Lcom/android/settings/R$layout;->miuix_preference_widget_navigation_item_text:I

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_2

    .line 1303
    :cond_4
    sget v4, Lcom/android/settings/R$layout;->miuix_preference_widget_text:I

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1304
    sget p1, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1305
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$dimen;->preference_text_right_max_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1308
    :cond_5
    :goto_2
    sget p1, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1310
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    :cond_6
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1314
    filled-new-array {v3}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v4, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    .line 1315
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->miuisettings_item_touch_color:I

    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-interface {p1, v1}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    .line 1316
    invoke-interface {p1, v2}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 1317
    invoke-interface {p1, v3, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_3

    .line 1319
    :cond_7
    iget-object p1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    sget v0, Lcom/android/settings/R$attr;->navigationPreferenceItemForeground:I

    .line 1320
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1321
    invoke-virtual {v3, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    move-object v0, v3

    goto :goto_4

    .line 1285
    :cond_8
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/settings/R$layout;->miuix_preference_category_layout:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1344
    :cond_9
    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1345
    new-instance p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;

    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/MiuiSettings$HeaderViewHolder;-><init>(Lcom/android/settings/MiuiSettings;Landroid/view/View;)V

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 1762
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 1763
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseSettingsController;

    .line 1764
    invoke-virtual {v0}, Lcom/android/settings/BaseSettingsController;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1755
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 1756
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseSettingsController;

    .line 1757
    invoke-virtual {v0}, Lcom/android/settings/BaseSettingsController;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClick(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
    .locals 2

    .line 1714
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter$1;-><init>(Lcom/android/settings/MiuiSettings$HeaderAdapter;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;ILcom/android/settings/MiuiSettings$HeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIcon(Lcom/android/settings/MiuiSettings$HeaderViewHolder;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1681
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    .line 1682
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 1686
    :cond_0
    iget-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    iget-wide v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget v2, Lcom/android/settings/R$id;->micloud_settings:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "account_type"

    .line 1687
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1693
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->xiaomi_account:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1698
    :cond_1
    iget-wide v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget p0, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    .line 1699
    iget p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz p0, :cond_2

    .line 1700
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1701
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1703
    :cond_2
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1707
    :cond_3
    :goto_0
    iget-wide v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    sget p0, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_4

    .line 1708
    iget-object p0, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->header_icon_size:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1709
    iget-object p1, p1, Lcom/android/settings/MiuiSettings$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p0, p0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1777
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/BaseSettingsController;

    .line 1778
    invoke-virtual {v1}, Lcom/android/settings/BaseSettingsController;->start()V

    goto :goto_0

    .line 1780
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSettingsFragment(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSettingsFragment(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1782
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSettings;->-$$Nest$fgetmSettingsFragment(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1769
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 1770
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseSettingsController;

    .line 1771
    invoke-virtual {v0}, Lcom/android/settings/BaseSettingsController;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateHeaderViewInfo()V
    .locals 2

    .line 1547
    iget-object p0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mSettingsControllerMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 1548
    sget v0, Lcom/android/settings/R$id;->mi_account_settings:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/BaseSettingsController;

    if-eqz p0, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/android/settings/BaseSettingsController;->updateStatus()V

    :cond_0
    return-void
.end method
