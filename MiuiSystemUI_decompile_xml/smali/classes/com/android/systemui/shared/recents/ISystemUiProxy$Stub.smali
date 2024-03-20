.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_a

    .line 18
    const/4 v0, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq p1, v0, :cond_9

    .line 22
    const/4 v3, 0x7

    .line 24
    if-eq p1, v3, :cond_8

    .line 25
    const/16 v3, 0xa

    .line 27
    if-eq p1, v3, :cond_7

    .line 29
    const/16 v3, 0x1a

    .line 31
    if-eq p1, v3, :cond_6

    .line 33
    const/16 v3, 0x1e

    .line 35
    if-eq p1, v3, :cond_5

    .line 37
    const/16 v0, 0xd

    .line 39
    if-eq p1, v0, :cond_4

    .line 41
    const/16 v0, 0xe

    .line 43
    if-eq p1, v0, :cond_3

    .line 45
    const/16 v0, 0x2d

    .line 47
    if-eq p1, v0, :cond_2

    .line 49
    const/16 v0, 0x2e

    .line 51
    if-eq p1, v0, :cond_1

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 55
    packed-switch p1, :pswitch_data_1

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 61
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 66
    move-result p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 73
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 75
    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    .line 77
    const-string p1, "onAssistantGestureCompletion"

    .line 80
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    goto/16 :goto_0

    .line 85
    :pswitch_1
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 87
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;

    .line 89
    invoke-direct {p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;-><init>()V

    .line 91
    const-string/jumbo p2, "stopScreenPinning"

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 97
    goto/16 :goto_0

    .line 100
    :pswitch_2
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 102
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    .line 104
    const/4 p2, 0x3

    .line 106
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 107
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    .line 110
    invoke-direct {p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    .line 112
    const-string p1, "notifyAccessibilityButtonLongClicked"

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 117
    goto/16 :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    move-result p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 129
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    .line 131
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    .line 133
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    .line 136
    invoke-direct {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    .line 138
    const-string p2, "notifyAccessibilityButtonClicked"

    .line 141
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 143
    goto/16 :goto_0

    .line 146
    :pswitch_4
    sget-object p1, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 153
    check-cast p1, Lcom/android/internal/util/ScreenshotRequest;

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 159
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 161
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 163
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 165
    const/4 p3, 0x0

    .line 167
    invoke-virtual {p2, p1, p0, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 168
    goto/16 :goto_0

    .line 171
    :pswitch_5
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 173
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    .line 175
    invoke-direct {p1, p0, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 177
    const-string/jumbo p2, "toggleNotificationPanel"

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    goto/16 :goto_0

    .line 186
    :pswitch_6
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 188
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 190
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 192
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    move-result-object p1

    .line 199
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 202
    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    invoke-virtual {p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    .line 209
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 212
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 214
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    .line 216
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 218
    goto/16 :goto_0

    .line 221
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 223
    move-result p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 230
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    .line 232
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Binder;ZI)V

    .line 234
    const-string p1, "notifyTaskbarAutohideSuspend"

    .line 237
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 239
    goto/16 :goto_0

    .line 242
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 244
    move-result p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 248
    move-result p3

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 255
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    .line 257
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZ)V

    .line 259
    const-string p1, "notifyTaskbarStatus"

    .line 262
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    goto/16 :goto_0

    .line 267
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 269
    move-result p1

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 276
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    .line 278
    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Binder;ZI)V

    .line 280
    const-string/jumbo p1, "setHomeRotationEnabled"

    .line 283
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 286
    goto/16 :goto_0

    .line 289
    :cond_2
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 291
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    .line 293
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 295
    const-string p2, "onBackPressed"

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    goto/16 :goto_0

    .line 303
    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 307
    move-result-object p1

    .line 310
    check-cast p1, Landroid/os/Bundle;

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 316
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    .line 318
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Parcelable;I)V

    .line 320
    const-string/jumbo p1, "startAssistant"

    .line 323
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 326
    goto/16 :goto_0

    .line 329
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 331
    move-result p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 338
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 340
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    .line 342
    const-string p1, "onAssistantProgress"

    .line 345
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 347
    goto :goto_0

    .line 350
    :cond_5
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 351
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    .line 353
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 355
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    .line 358
    invoke-direct {p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    .line 360
    const-string p1, "expandNotificationPanel"

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 365
    goto :goto_0

    .line 368
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 369
    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 376
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    .line 378
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    .line 380
    const-string p1, "notifyPrioritizedRotation"

    .line 383
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 385
    goto :goto_0

    .line 388
    :cond_7
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 389
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 391
    move-result-object p1

    .line 394
    check-cast p1, Landroid/view/MotionEvent;

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 400
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    .line 402
    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Parcelable;I)V

    .line 404
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    .line 407
    invoke-direct {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    .line 409
    const-string p2, "onStatusBarMotionEvent"

    .line 412
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 414
    goto :goto_0

    .line 417
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 418
    move-result p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 425
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    .line 427
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Binder;ZI)V

    .line 429
    const-string p1, "onOverviewShown"

    .line 432
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 434
    goto :goto_0

    .line 437
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 438
    move-result p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 445
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    .line 447
    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    .line 449
    const-string/jumbo p1, "startScreenPinning"

    .line 452
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 455
    :goto_0
    return v1

    .line 458
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    return v1

    .line 462
    nop

    .line 463
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
    .line 476
.end method
