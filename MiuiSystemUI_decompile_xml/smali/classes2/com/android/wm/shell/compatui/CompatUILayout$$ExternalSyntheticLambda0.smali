.class public final synthetic Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const v0, 0x7f0a01bb    # @id/camera_compat_hint

    .line 4
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    goto/16 :goto_5

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    const-class p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 24
    const-string p0, "CompatUIWindowManager"

    .line 26
    const-string p1, "Camera compat shouldn\'t receive clicks in the hidden state."

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_1

    .line 33
    :cond_0
    const/4 p1, 0x3

    .line 34
    iput p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 37
    iget v3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 39
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 41
    iget-object v4, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v4

    .line 45
    :try_start_0
    iget-object v5, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Landroid/window/TaskAppearedInfo;

    .line 52
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez v3, :cond_1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    move-result-object v3

    .line 61
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 62
    invoke-virtual {v1, v3, p1}, Landroid/window/TaskOrganizer;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V

    .line 64
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 67
    const p1, 0x7f0a01b9    # @id/camera_compat_control

    .line 69
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 75
    :goto_1
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0

    .line 81
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 82
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 86
    move-result p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    const-class p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 92
    const-string p0, "CompatUIWindowManager"

    .line 94
    const-string p1, "Camera compat shouldn\'t receive clicks in the hidden state."

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_3

    .line 101
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 102
    if-ne p1, v1, :cond_3

    .line 104
    const/4 v1, 0x2

    .line 106
    :cond_3
    iput v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 107
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 109
    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 111
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 113
    iget-object v3, p1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 115
    monitor-enter v3

    .line 117
    :try_start_2
    iget-object v2, p1, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 118
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 123
    check-cast v0, Landroid/window/TaskAppearedInfo;

    .line 124
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    if-nez v0, :cond_4

    .line 127
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 130
    move-result-object v0

    .line 133
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/window/TaskOrganizer;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V

    .line 136
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 139
    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 141
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUILayout;->updateCameraTreatmentButton(I)V

    .line 143
    :goto_3
    return-void

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    throw p0

    .line 149
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 150
    sget p1, Lcom/android/wm/shell/compatui/CompatUILayout;->$r8$clinit:I

    .line 152
    const p1, 0x7f0a088e    # @id/size_compat_hint

    .line 154
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 157
    return-void

    .line 160
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 161
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 163
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mOnRestartButtonClicked:Ljava/util/function/Consumer;

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 169
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 171
    move-result-object p0

    .line 174
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 175
    return-void

    .line 178
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 179
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 181
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 183
    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 185
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 187
    iget-object v3, p1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 189
    monitor-enter v3

    .line 191
    :try_start_4
    iget-object p1, p1, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object p0

    .line 197
    check-cast p0, Landroid/window/TaskAppearedInfo;

    .line 198
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    if-eqz p0, :cond_5

    .line 201
    :try_start_5
    const-string p1, "android.sizecompat.MiuiSizeCompatManager"

    .line 203
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 205
    move-result-object p1

    .line 208
    const-string/jumbo v0, "switchToFullscreen"

    .line 209
    new-array v3, v1, [Ljava/lang/Class;

    .line 212
    const-class v4, Landroid/window/WindowContainerToken;

    .line 214
    aput-object v4, v3, v2

    .line 216
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 218
    move-result-object p1

    .line 221
    new-array v0, v1, [Ljava/lang/Object;

    .line 222
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 224
    move-result-object p0

    .line 227
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 228
    aput-object p0, v0, v2

    .line 230
    const/4 p0, 0x0

    .line 232
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 233
    goto :goto_4

    .line 236
    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :cond_5
    :goto_4
    return-void

    .line 241
    :catchall_2
    move-exception p0

    .line 242
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 243
    throw p0

    .line 244
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 245
    sget p1, Lcom/android/wm/shell/compatui/CompatUILayout;->$r8$clinit:I

    .line 247
    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 249
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 254
.end method
