.class public abstract Lcom/android/wm/shell/pip/IPip$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.pip.IPip"

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
    .locals 9

    .line 1
    const-string v0, "com.android.wm.shell.pip.IPip"

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
    if-eq p1, v2, :cond_4

    .line 18
    const/4 v0, 0x0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result p1

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 33
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 38
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda4;

    .line 40
    invoke-direct {p2, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda4;-><init>(I)V

    .line 42
    const-string/jumbo p1, "setLauncherAppIconSize"

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 48
    goto/16 :goto_1

    .line 51
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    move-result p3

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 61
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 66
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;

    .line 68
    invoke-direct {p2, p3, v0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;-><init>(IIZ)V

    .line 70
    const-string/jumbo p1, "setLauncherKeepClearAreaHeight"

    .line 73
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 76
    goto/16 :goto_1

    .line 79
    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 83
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;

    .line 85
    invoke-direct {p1, v0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;-><init>(I)V

    .line 87
    const-string/jumbo p2, "setPipAnimationTypeToAlpha"

    .line 90
    invoke-static {p0, p2, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 93
    goto/16 :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 98
    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    move-result p3

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 109
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 111
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;

    .line 113
    invoke-direct {p2, p3, v1, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;-><init>(IIZ)V

    .line 115
    const-string/jumbo p1, "setShelfHeight"

    .line 118
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 121
    goto/16 :goto_1

    .line 124
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 126
    move-result-object p1

    .line 129
    if-nez p1, :cond_1

    .line 130
    const/4 p1, 0x0

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    const-string p3, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 134
    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 136
    move-result-object p3

    .line 139
    if-eqz p3, :cond_2

    .line 140
    instance-of p4, p3, Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 142
    if-eqz p4, :cond_2

    .line 144
    move-object p1, p3

    .line 146
    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    new-instance p3, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;

    .line 150
    invoke-direct {p3, p1}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 152
    move-object p1, p3

    .line 155
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 159
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 161
    new-instance p3, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;

    .line 163
    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    .line 165
    const-string/jumbo p0, "setPipAnimationListener"

    .line 168
    invoke-static {p2, p0, p3, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 171
    goto/16 :goto_1

    .line 174
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    move-result p1

    .line 179
    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 182
    move-result-object p3

    .line 185
    check-cast p3, Landroid/content/ComponentName;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 191
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 193
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda5;

    .line 195
    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda5;-><init>(ILandroid/content/ComponentName;)V

    .line 197
    const-string p1, "abortSwipePipToHome"

    .line 200
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 202
    goto/16 :goto_1

    .line 205
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 207
    move-result p1

    .line 210
    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 213
    move-result-object p3

    .line 216
    check-cast p3, Landroid/content/ComponentName;

    .line 217
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 219
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 221
    move-result-object p4

    .line 224
    check-cast p4, Landroid/graphics/Rect;

    .line 225
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 229
    move-result-object v2

    .line 232
    check-cast v2, Landroid/view/SurfaceControl;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 238
    if-eqz v2, :cond_3

    .line 240
    const-string p2, "PipController.stopSwipePipToHome"

    .line 242
    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 244
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 247
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;

    .line 249
    invoke-direct {p2, p1, p3, p4, v2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;-><init>(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 251
    const-string/jumbo p1, "stopSwipePipToHome"

    .line 254
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 257
    goto :goto_1

    .line 260
    :pswitch_7
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 261
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 263
    move-result-object p1

    .line 266
    move-object v4, p1

    .line 267
    check-cast v4, Landroid/content/ComponentName;

    .line 268
    sget-object p1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 270
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 272
    move-result-object p1

    .line 275
    move-object v5, p1

    .line 276
    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 277
    sget-object p1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 281
    move-result-object p1

    .line 284
    move-object v6, p1

    .line 285
    check-cast v6, Landroid/app/PictureInPictureParams;

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 288
    move-result v7

    .line 291
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 292
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 294
    move-result-object p1

    .line 297
    move-object v8, p1

    .line 298
    check-cast v8, Landroid/graphics/Rect;

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 304
    new-array p1, v1, [Landroid/graphics/Rect;

    .line 306
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 308
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;

    .line 310
    move-object v2, p2

    .line 312
    move-object v3, p1

    .line 313
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;-><init>([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)V

    .line 314
    const-string/jumbo p4, "startSwipePipToHome"

    .line 317
    invoke-static {p0, p4, p2, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 320
    aget-object p0, p1, v0

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 328
    :goto_1
    return v1

    .line 331
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    return v1

    .line 335
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 336
.end method
