.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_e

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 12
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f1307d7    # @string/monitoring_subtitle_vpn 'VPN'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 27
    if-nez p0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    const v0, 0x7f1307d6    # @string/monitoring_subtitle_network_logging 'Network logging'

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    :goto_1
    return-object v1

    .line 39
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 42
    if-nez p0, :cond_2

    .line 44
    goto :goto_2

    .line 46
    :cond_2
    const v0, 0x7f1307d5    # @string/monitoring_subtitle_ca_certificate 'CA certificates'

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    :goto_2
    return-object v1

    .line 54
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 57
    if-nez p0, :cond_3

    .line 59
    goto :goto_3

    .line 61
    :cond_3
    const v0, 0x7f130998    # @string/quick_settings_disclosure_managed_profile_network_activity 'Work profile network activity is visible to your IT admin'

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    :goto_3
    return-object v1

    .line 69
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 72
    if-nez p0, :cond_4

    .line 74
    goto :goto_4

    .line 76
    :cond_4
    const v0, 0x7f130996    # @string/quick_settings_disclosure_managed_profile_monitoring 'Your organization may monitor network traffic in your work profile'

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    :goto_4
    return-object v1

    .line 84
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 85
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 87
    if-nez p0, :cond_5

    .line 89
    goto :goto_5

    .line 91
    :cond_5
    const v0, 0x7f13099c    # @string/quick_settings_disclosure_management_vpns 'This device belongs to your organization and is connected to the internet through VPNs'

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 98
    :goto_5
    return-object v1

    .line 99
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 102
    if-nez p0, :cond_6

    .line 104
    goto :goto_6

    .line 106
    :cond_6
    const v0, 0x7f13099a    # @string/quick_settings_disclosure_management_monitoring 'Your organization owns this device and may monitor network traffic'

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 113
    :goto_6
    return-object v1

    .line 114
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 115
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 117
    if-nez p0, :cond_7

    .line 119
    goto :goto_7

    .line 121
    :cond_7
    const v0, 0x7f130999    # @string/quick_settings_disclosure_management 'This device belongs to your organization'

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 128
    :goto_7
    return-object v1

    .line 129
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 132
    if-nez p0, :cond_8

    .line 134
    goto :goto_8

    .line 136
    :cond_8
    const v0, 0x7f1307c9    # @string/monitoring_description_managed_profile_network_logging 'Your admin has turned on network logging, which monitors traffic in your work profile but not in you ...'

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 143
    :goto_8
    return-object v1

    .line 144
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 145
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 147
    if-nez p0, :cond_9

    .line 149
    goto :goto_9

    .line 151
    :cond_9
    const v0, 0x7f1307cc    # @string/monitoring_description_management_network_logging 'Your admin has turned on network logging, which monitors traffic on your device.'

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 158
    :goto_9
    return-object v1

    .line 159
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 162
    if-nez p0, :cond_a

    .line 164
    goto :goto_a

    .line 166
    :cond_a
    const v0, 0x7f1307c7    # @string/monitoring_description_managed_profile_ca_certificate 'Your organization installed a certificate authority in your work profile. Your secure network traffi ...'

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 173
    :goto_a
    return-object v1

    .line 174
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 177
    if-nez p0, :cond_b

    .line 179
    goto :goto_b

    .line 181
    :cond_b
    const v0, 0x7f1307cb    # @string/monitoring_description_management_ca_certificate 'Your organization installed a certificate authority on this device. Your secure network traffic may  ...'

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    :goto_b
    return-object v1

    .line 189
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 190
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 192
    if-nez p0, :cond_c

    .line 194
    goto :goto_c

    .line 196
    :cond_c
    const v0, 0x7f1307ca    # @string/monitoring_description_management 'This device belongs to your organization.\n\nYour IT admin can monitor and manage settings, corporate  ...'

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 203
    :goto_c
    return-object v1

    .line 204
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 207
    if-nez p0, :cond_d

    .line 209
    goto :goto_d

    .line 211
    :cond_d
    const v0, 0x7f1307d8    # @string/monitoring_title_device_owned 'Device management'

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 218
    :goto_d
    return-object v1

    .line 219
    :goto_e
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 220
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 222
    if-nez p0, :cond_e

    .line 224
    goto :goto_f

    .line 226
    :cond_e
    const v0, 0x7f1307c4    # @string/monitoring_button_view_policies 'View Policies'

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 233
    :goto_f
    return-object v1

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 236
.end method
