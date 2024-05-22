.class public final synthetic Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mIntent:Landroid/content/Intent;

    .line 8
    iget-object v3, v0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v4, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string p0, "StatusBarLaunchAnimator"

    .line 20
    if-eqz v2, :cond_6

    .line 22
    if-nez v3, :cond_0

    .line 24
    goto/16 :goto_3

    .line 26
    :cond_0
    iput-object v0, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mCamouflageImageWindow:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    iput-object v0, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 37
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 39
    const/high16 v2, 0x10000000

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v2, 0x4000000

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 52
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "invalid location: "

    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, ", start without animation."

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mCamouflageImageWindow:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->hideView()V

    .line 82
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 85
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 90
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 91
    const/4 v1, 0x1

    .line 93
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 94
    goto/16 :goto_4

    .line 97
    :cond_1
    const-string/jumbo v2, "startActivity with animation."

    .line 99
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 105
    iget-object v3, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mMainHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;-><init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;Landroid/os/Handler;Landroid/graphics/Rect;)V

    .line 109
    sget-boolean v3, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsLowEndDevice:Z

    .line 112
    if-eqz v3, :cond_2

    .line 114
    const-wide/16 v3, 0xe6

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    const-wide/16 v3, 0x258

    .line 119
    :goto_0
    move-wide v7, v3

    .line 121
    const-wide/16 v3, 0x78

    .line 122
    sub-long v3, v7, v3

    .line 124
    const-wide/16 v5, 0x60

    .line 126
    sub-long v9, v3, v5

    .line 128
    new-instance v3, Landroid/view/RemoteAnimationAdapter;

    .line 130
    move-object v5, v3

    .line 132
    move-object v6, v2

    .line 133
    invoke-direct/range {v5 .. v10}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 134
    new-instance v4, Landroid/window/RemoteTransition;

    .line 137
    new-instance v5, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    .line 139
    invoke-direct {v5, v2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    .line 141
    invoke-direct {v4, v5}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    .line 144
    invoke-static {v3, v4}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 147
    move-result-object v2

    .line 150
    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 153
    move-result-object v2

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    const/4 v2, 0x0

    .line 158
    :goto_1
    const-string v3, "profile"

    .line 159
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 161
    move-result-object v3

    .line 164
    check-cast v3, Landroid/os/UserHandle;

    .line 165
    iget-object v1, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 167
    if-eqz v3, :cond_5

    .line 169
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 171
    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v4

    .line 178
    if-eqz v4, :cond_4

    .line 179
    goto :goto_2

    .line 181
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 182
    move-result-object v4

    .line 185
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    .line 186
    move-result-object v5

    .line 189
    const-string v6, "launcherapps"

    .line 190
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 195
    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 196
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_4

    .line 201
    :catch_0
    move-exception v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    const-string v3, "Launcher does not have the permission to launch "

    .line 205
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 221
    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    goto :goto_4

    .line 225
    :cond_5
    :goto_2
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 226
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 228
    goto :goto_4

    .line 231
    :cond_6
    :goto_3
    const-string v0, "invalid parameter when starting activity."

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :catch_1
    :goto_4
    return-void
    .line 237
.end method
