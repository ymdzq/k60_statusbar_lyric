.class public abstract Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;


# static fields
.field static final TRANSACTION_onPreSoScStateChanged:I = 0x4

.field static final TRANSACTION_onSoScStateChanged:I = 0x3

.field static final TRANSACTION_onStagePositionChanged:I = 0x1

.field static final TRANSACTION_onTaskStageChanged:I = 0x2

.field static final TRANSACTION_setSplitScreenResizing:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    instance-of v1, v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    check-cast v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 18
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
    .line 26
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object v2, p2

    .line 4
    const-string v3, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 5
    const/4 v10, 0x1

    .line 7
    if-lt v1, v10, :cond_0

    .line 8
    const v4, 0xffffff

    .line 10
    if-gt v1, v4, :cond_0

    .line 13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    :cond_0
    const v4, 0x5f4e5446

    .line 18
    if-eq v1, v4, :cond_6

    .line 21
    if-eq v1, v10, :cond_5

    .line 23
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_4

    .line 26
    const/4 v3, 0x3

    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    const/4 v3, 0x4

    .line 31
    if-eq v1, v3, :cond_2

    .line 32
    const/4 v3, 0x5

    .line 34
    if-eq v1, v3, :cond_1

    .line 35
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 42
    move-result v1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 46
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->setSplitScreenResizing(Z)V

    .line 49
    goto/16 :goto_0

    .line 52
    :cond_2
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Landroid/graphics/Rect;

    .line 60
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 67
    check-cast v3, Landroid/graphics/Rect;

    .line 68
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 75
    check-cast v4, Landroid/graphics/Rect;

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 78
    move-result v5

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 82
    move-result v6

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 86
    move-result v7

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 90
    move-result v8

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 94
    move-result v9

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    move-object v0, p0

    .line 101
    move-object v2, v3

    .line 102
    move-object v3, v4

    .line 103
    move v4, v5

    .line 104
    move v5, v6

    .line 105
    move v6, v7

    .line 106
    move v7, v8

    .line 107
    move v8, v9

    .line 108
    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    .line 109
    goto/16 :goto_0

    .line 112
    :cond_3
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 119
    check-cast v1, Landroid/graphics/Rect;

    .line 120
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 122
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 124
    move-result-object v3

    .line 127
    check-cast v3, Landroid/graphics/Rect;

    .line 128
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 132
    move-result-object v4

    .line 135
    check-cast v4, Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    move-result v5

    .line 141
    sget-object v6, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 144
    move-result-object v6

    .line 147
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    sget-object v7, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 152
    move-result-object v7

    .line 155
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 158
    move-result v8

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    move-result v9

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 166
    move-result v11

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    move-object v0, p0

    .line 173
    move-object v2, v3

    .line 174
    move-object v3, v4

    .line 175
    move v4, v5

    .line 176
    move-object v5, v6

    .line 177
    move-object v6, v7

    .line 178
    move v7, v8

    .line 179
    move v8, v9

    .line 180
    move v9, v11

    .line 181
    invoke-interface/range {v0 .. v9}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    .line 182
    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 186
    move-result v1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    move-result v3

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 194
    move-result v4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-interface {p0, v1, v3, v4}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onTaskStageChanged(IIZ)V

    .line 201
    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    move-result v1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    move-result v3

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-interface {p0, v1, v3}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onStagePositionChanged(II)V

    .line 216
    :goto_0
    return v10

    .line 219
    :cond_6
    move-object v0, p3

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return v10
    .line 224
.end method
