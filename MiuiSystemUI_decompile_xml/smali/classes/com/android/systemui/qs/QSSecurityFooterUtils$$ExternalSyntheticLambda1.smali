.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 12
    const v1, 0x7f1307c8    # @string/monitoring_description_managed_profile_named_vpn 'Your work apps are connected to the internet through %1$s. Your network activity in work apps, inclu ...'

    .line 14
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f1307c6    # @string/monitoring_description_managed_device_named_vpn 'This device is connected to the internet through %1$s. Your network activity, including emails and b ...'

    .line 32
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 48
    const v1, 0x7f1309a5    # @string/quick_settings_disclosure_personal_profile_named_vpn 'Your personal apps are connected to the internet through %1$s'

    .line 50
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 66
    const v1, 0x7f130997    # @string/quick_settings_disclosure_managed_profile_named_vpn 'Your work apps are connected to the internet through %1$s'

    .line 68
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 82
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 84
    const v1, 0x7f13099b    # @string/quick_settings_disclosure_management_named_vpn 'This device belongs to your organization and is connected to the internet through %1$s'

    .line 86
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 100
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 102
    const v1, 0x7f1307d0    # @string/monitoring_description_personal_profile_named_vpn 'Your personal apps are connected to the internet through %1$s. Your network activity, including emai ...'

    .line 104
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 110
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 116
.end method
