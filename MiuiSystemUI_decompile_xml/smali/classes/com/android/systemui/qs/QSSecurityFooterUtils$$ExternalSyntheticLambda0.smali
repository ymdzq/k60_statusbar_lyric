.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

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
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 12
    const v1, 0x7f1307cd    # @string/monitoring_description_named_management 'This device belongs to %1$s.\n\nYour IT admin can monitor and manage settings, corporate access, apps, ...'

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
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f1309a0    # @string/quick_settings_disclosure_named_management_monitoring '%1$s owns this device and may monitor network traffic'

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
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 48
    const v1, 0x7f13099e    # @string/quick_settings_disclosure_named_managed_profile_monitoring '%1$s may monitor network traffic in your work profile'

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
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 66
    const v1, 0x7f1309a2    # @string/quick_settings_disclosure_named_management_vpns 'This device belongs to %1$s and is connected to the internet through VPNs'

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
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 82
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 84
    const v1, 0x7f13099f    # @string/quick_settings_disclosure_named_management 'This device belongs to %1$s'

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 98
.end method
