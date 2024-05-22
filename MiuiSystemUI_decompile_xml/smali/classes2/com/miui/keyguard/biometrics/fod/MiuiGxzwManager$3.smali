.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_2

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 11
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    .line 13
    move-result p1

    .line 16
    if-nez p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 19
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 21
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setHightlightTransparen()V

    .line 23
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 26
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 28
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 30
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 33
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 35
    if-eqz p0, :cond_5

    .line 37
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 39
    goto/16 :goto_2

    .line 42
    :pswitch_1
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 44
    invoke-static {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 46
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 49
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    .line 51
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 57
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 59
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 62
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 64
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 66
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 69
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 71
    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 75
    goto/16 :goto_2

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 80
    invoke-virtual {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 82
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 85
    invoke-static {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 87
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 90
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 92
    if-ne p1, v1, :cond_0

    .line 94
    goto :goto_0

    .line 96
    :cond_0
    move v1, v2

    .line 97
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->showGxzwView(Z)V

    .line 98
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 101
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 103
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 105
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 108
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 110
    if-eqz p0, :cond_5

    .line 112
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 114
    goto/16 :goto_2

    .line 117
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 119
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 121
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHealthAppAuthen:Z

    .line 123
    if-eqz v1, :cond_1

    .line 125
    goto/16 :goto_2

    .line 127
    :cond_1
    const/4 v1, 0x5

    .line 129
    if-eq p1, v1, :cond_2

    .line 130
    const/16 v1, 0x8

    .line 132
    if-ne p1, v1, :cond_5

    .line 134
    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 136
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 139
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 141
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 144
    invoke-static {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 146
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 149
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 151
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 153
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 156
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 158
    if-eqz p0, :cond_5

    .line 160
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 162
    goto/16 :goto_2

    .line 165
    :pswitch_4
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 167
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 169
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 172
    invoke-static {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 174
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 177
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 179
    invoke-virtual {p1, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 181
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 184
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 186
    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 190
    :cond_3
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 193
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->showGxzwView(Z)V

    .line 195
    goto/16 :goto_2

    .line 198
    :pswitch_5
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 200
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    .line 202
    move-result p1

    .line 205
    if-nez p1, :cond_5

    .line 206
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 208
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 210
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 213
    invoke-static {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 215
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 218
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 220
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 223
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 225
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 227
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 230
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 232
    if-eqz p0, :cond_5

    .line 234
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 236
    goto :goto_2

    .line 239
    :pswitch_6
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 240
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    .line 242
    move-result p1

    .line 245
    if-nez p1, :cond_5

    .line 246
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 248
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 250
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 253
    invoke-static {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 255
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 258
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 260
    goto :goto_2

    .line 263
    :pswitch_7
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 264
    iget-boolean v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHealthAppAuthen:Z

    .line 266
    if-nez v0, :cond_5

    .line 268
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 270
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 273
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 275
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 278
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 280
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 282
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 285
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 287
    if-eqz p0, :cond_5

    .line 289
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 291
    goto :goto_2

    .line 294
    :pswitch_8
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 295
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 297
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$3;->isFingerprintDetectionRunning()Z

    .line 299
    move-result v3

    .line 302
    invoke-virtual {v0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 303
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 306
    invoke-static {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$msetHealthAppAuthen(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 308
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 311
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 313
    if-ne p1, v1, :cond_4

    .line 315
    goto :goto_1

    .line 317
    :cond_4
    move v1, v2

    .line 318
    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->showGxzwView(Z)V

    .line 319
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 322
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 324
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 326
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 329
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 331
    if-eqz p0, :cond_5

    .line 333
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 335
    :cond_5
    :goto_2
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x3e9
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
    .line 340
.end method
