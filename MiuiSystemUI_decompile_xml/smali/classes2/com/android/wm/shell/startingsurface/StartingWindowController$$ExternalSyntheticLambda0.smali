.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto/16 :goto_15

    .line 9
    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 15
    check-cast v0, Landroid/window/StartingWindowInfo;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v2, "addStartingWindow"

    .line 22
    const-wide/16 v3, 0x20

    .line 24
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/os/TurboSchedMonitor;->addStartingWindowHook()V

    .line 33
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 36
    invoke-interface {v2, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;->getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I

    .line 38
    move-result v10

    .line 41
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    const/4 v2, 0x5

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v8, -0x1

    .line 47
    if-ne v10, v2, :cond_8

    .line 48
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget-object v12, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 55
    if-eqz v12, :cond_1

    .line 57
    iget-object v5, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 59
    iget-object v15, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 61
    iget-object v14, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    .line 63
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget-object v13, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 68
    iget v9, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 70
    const-string v2, "Windowless Snapshot "

    .line 72
    invoke-static {v2, v9}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 78
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 82
    move-result v6

    .line 85
    const/16 v7, 0x7f6

    .line 86
    invoke-static {v0, v2, v7, v6, v3}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 88
    move-result-object v3

    .line 91
    if-nez v3, :cond_0

    .line 92
    move-object/from16 v21, v1

    .line 94
    move/from16 v16, v10

    .line 96
    move-object/from16 p0, v11

    .line 98
    goto/16 :goto_12

    .line 100
    :cond_0
    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 102
    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 104
    invoke-virtual {v2, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 106
    move-result-object v2

    .line 109
    new-instance v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    .line 110
    iget-object v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 112
    invoke-direct {v8, v6, v5}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    .line 114
    new-instance v7, Landroid/view/SurfaceControlViewHost;

    .line 117
    iget-object v5, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    .line 119
    const-string v6, "WindowlessSnapshotWindowCreator"

    .line 121
    invoke-direct {v7, v5, v2, v8, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 126
    move-result-object v2

    .line 129
    new-instance v6, Landroid/graphics/Rect;

    .line 130
    move/from16 v16, v9

    .line 132
    iget v9, v2, Landroid/graphics/Point;->x:I

    .line 134
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 136
    invoke-direct {v6, v4, v4, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    iget-object v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 141
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 143
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 145
    move-result-object v9

    .line 148
    iget-object v4, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 149
    new-instance v2, Landroid/widget/FrameLayout;

    .line 151
    move-object/from16 v17, v4

    .line 153
    iget-object v4, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    move-object/from16 v18, v14

    .line 160
    new-instance v14, Landroid/view/ContextThemeWrapper;

    .line 162
    iget-object v4, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 166
    move-result-object v4

    .line 169
    invoke-direct {v14, v5, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 170
    invoke-direct {v2, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    iget-object v4, v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 179
    const/4 v14, 0x0

    .line 181
    move-object v2, v0

    .line 182
    move-object v5, v12

    .line 183
    move-object/from16 v19, v7

    .line 184
    move-object v7, v9

    .line 186
    move-object v9, v8

    .line 187
    move-object/from16 v8, v17

    .line 188
    move-object/from16 v21, v1

    .line 190
    move-object v1, v9

    .line 192
    move-object/from16 p0, v11

    .line 193
    move/from16 v11, v16

    .line 195
    move v9, v14

    .line 197
    invoke-static/range {v2 .. v9}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    .line 198
    invoke-static {v13}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    .line 201
    move-result-object v2

    .line 204
    new-instance v3, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    .line 205
    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 207
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 209
    move-result v17

    .line 212
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    .line 213
    move-result v2

    .line 216
    iget v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 217
    move-object v13, v3

    .line 219
    move-object/from16 v6, v18

    .line 220
    move-object v14, v6

    .line 222
    move-object v7, v15

    .line 223
    move-object/from16 v15, v19

    .line 224
    move-object/from16 v16, v4

    .line 226
    move/from16 v18, v2

    .line 228
    move/from16 v19, v5

    .line 230
    move-object/from16 v20, v7

    .line 232
    invoke-direct/range {v13 .. v20}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControl;IZILcom/android/wm/shell/common/ShellExecutor;)V

    .line 234
    iget-object v2, v6, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 237
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 239
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 244
    invoke-virtual {v0, v1}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    .line 246
    goto/16 :goto_a

    .line 249
    :cond_1
    move-object/from16 v21, v1

    .line 251
    move-object/from16 p0, v11

    .line 253
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 255
    iget-object v9, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    .line 257
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iget-object v15, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 262
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 264
    if-eqz v2, :cond_2

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    iget-object v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    :goto_0
    if-eqz v2, :cond_16

    .line 271
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 273
    if-nez v2, :cond_3

    .line 275
    goto/16 :goto_a

    .line 277
    :cond_3
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 279
    iget-object v3, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 281
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 283
    move-result-object v2

    .line 286
    if-nez v2, :cond_4

    .line 287
    goto/16 :goto_a

    .line 289
    :cond_4
    iget-object v11, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    .line 291
    const/4 v4, 0x1

    .line 293
    const/4 v5, 0x0

    .line 294
    invoke-static {v11, v0, v5, v4, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    .line 295
    move-result-object v12

    .line 298
    if-nez v12, :cond_5

    .line 299
    goto/16 :goto_a

    .line 301
    :cond_5
    new-instance v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    .line 303
    iget-object v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 305
    invoke-direct {v14, v3, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    .line 307
    new-instance v13, Landroid/view/SurfaceControlViewHost;

    .line 310
    const-string v1, "WindowlessSplashWindowCreator"

    .line 312
    invoke-direct {v13, v12, v2, v14, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    const-string v2, "Windowless Splash "

    .line 319
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v5

    .line 332
    const/4 v4, 0x1

    .line 333
    const/4 v6, -0x3

    .line 334
    new-instance v7, Landroid/os/Binder;

    .line 335
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 337
    move-object v2, v12

    .line 340
    move-object v3, v0

    .line 341
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 342
    move-result-object v1

    .line 345
    iget-object v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 346
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 348
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 350
    move-result-object v2

    .line 353
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 354
    move-result v3

    .line 357
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 358
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 360
    move-result v2

    .line 363
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 364
    iget-object v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 366
    if-eqz v2, :cond_6

    .line 368
    goto :goto_1

    .line 370
    :cond_6
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    .line 371
    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 373
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 376
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout;

    .line 379
    iget-object v4, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 381
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 386
    iget-object v6, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 390
    move-result-object v6

    .line 393
    invoke-direct {v5, v11, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 394
    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v13, v3, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 400
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 403
    move-result v1

    .line 406
    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    .line 407
    iget-object v2, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 410
    const/4 v5, 0x0

    .line 412
    iput v5, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 413
    iput v5, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 415
    const/4 v6, 0x0

    .line 417
    iput-object v6, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 418
    iput-object v6, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 420
    iput v5, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 422
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 424
    if-eqz v2, :cond_7

    .line 426
    goto :goto_2

    .line 428
    :cond_7
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 429
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 431
    :goto_2
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    .line 433
    invoke-direct {v5, v4, v12, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 435
    iput v1, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 438
    const/4 v2, 0x1

    .line 440
    iput v2, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 441
    invoke-virtual {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build()Landroid/window/SplashScreenView;

    .line 443
    move-result-object v2

    .line 446
    invoke-virtual {v2}, Landroid/window/SplashScreenView;->setNotCopyable()V

    .line 447
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 450
    new-instance v3, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;

    .line 453
    iget-object v4, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 455
    move-object v11, v3

    .line 457
    move-object v12, v9

    .line 458
    move-object v5, v14

    .line 459
    move-object v14, v2

    .line 460
    move-object v2, v15

    .line 461
    move-object v15, v4

    .line 462
    move/from16 v16, v1

    .line 463
    invoke-direct/range {v11 .. v16}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;I)V

    .line 465
    iget-object v1, v9, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 468
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 470
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 477
    invoke-virtual {v0, v1}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    .line 479
    goto/16 :goto_a

    .line 482
    :cond_8
    move-object/from16 v21, v1

    .line 484
    move-object/from16 p0, v11

    .line 486
    const/4 v1, 0x1

    .line 488
    if-eq v10, v1, :cond_a

    .line 489
    const/4 v1, 0x3

    .line 491
    if-eq v10, v1, :cond_a

    .line 492
    const/4 v1, 0x6

    .line 494
    if-eq v10, v1, :cond_a

    .line 495
    const/4 v1, 0x4

    .line 497
    if-ne v10, v1, :cond_9

    .line 498
    goto :goto_3

    .line 500
    :cond_9
    const/4 v2, 0x0

    .line 501
    goto :goto_4

    .line 502
    :cond_a
    const/4 v1, 0x4

    .line 503
    :goto_3
    const/4 v2, 0x1

    .line 504
    :goto_4
    if-eqz v2, :cond_17

    .line 505
    move-object/from16 v11, v21

    .line 507
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 509
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->mlaunchPackageName:Ljava/lang/String;

    .line 514
    sput-object v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->launchPackageName:Ljava/lang/String;

    .line 516
    iget-object v12, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 518
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    iget-object v9, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 523
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 525
    if-eqz v2, :cond_b

    .line 527
    goto :goto_5

    .line 529
    :cond_b
    iget-object v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 530
    :goto_5
    if-eqz v2, :cond_15

    .line 532
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 534
    if-nez v3, :cond_c

    .line 536
    goto/16 :goto_9

    .line 538
    :cond_c
    iget v3, v0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 540
    if-eqz v3, :cond_d

    .line 542
    goto :goto_6

    .line 544
    :cond_d
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 545
    move-result v3

    .line 548
    if-eqz v3, :cond_e

    .line 549
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 551
    move-result v3

    .line 554
    goto :goto_6

    .line 555
    :cond_e
    const v3, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 556
    :goto_6
    iget-object v4, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    .line 559
    iget-object v13, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 561
    invoke-static {v4, v0, v3, v10, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    .line 563
    move-result-object v14

    .line 566
    if-nez v14, :cond_f

    .line 567
    goto/16 :goto_9

    .line 569
    :cond_f
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 571
    if-ne v10, v1, :cond_10

    .line 573
    move v6, v8

    .line 575
    goto :goto_7

    .line 576
    :cond_10
    const/4 v1, -0x3

    .line 577
    move v6, v1

    .line 578
    :goto_7
    iget-object v7, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 579
    move-object v2, v14

    .line 581
    move-object v3, v0

    .line 582
    move v4, v10

    .line 583
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 584
    move-result-object v1

    .line 587
    iget v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 588
    iget v15, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 590
    invoke-virtual {v13, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 592
    move-result-object v9

    .line 595
    new-instance v13, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;

    .line 596
    invoke-direct {v13}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;-><init>()V

    .line 598
    new-instance v8, Landroid/widget/FrameLayout;

    .line 601
    iget-object v7, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 603
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 608
    iget-object v3, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 612
    move-result-object v3

    .line 615
    invoke-direct {v2, v14, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 616
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 619
    const/4 v2, 0x0

    .line 622
    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 623
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 626
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;

    .line 629
    move-object v2, v6

    .line 631
    move-object v3, v12

    .line 632
    move-object v4, v13

    .line 633
    move v5, v15

    .line 634
    move-object/from16 v21, v11

    .line 635
    move-object v11, v6

    .line 637
    move-object v6, v0

    .line 638
    move-object/from16 v16, v7

    .line 639
    move-object v7, v8

    .line 641
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/widget/FrameLayout;)V

    .line 642
    iget-object v2, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 645
    if-eqz v2, :cond_11

    .line 647
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 649
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 651
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;

    .line 656
    const-string v4, "ShellStartingWindow"

    .line 658
    const/4 v5, 0x1

    .line 660
    const/4 v6, 0x0

    .line 661
    invoke-direct {v3, v2, v5, v4, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZLjava/lang/String;I)V

    .line 662
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 665
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 667
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 669
    goto :goto_8

    .line 672
    :cond_11
    const/4 v5, 0x1

    .line 673
    const/4 v6, 0x0

    .line 674
    :goto_8
    new-instance v7, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    .line 675
    invoke-direct {v7, v13, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    .line 677
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    .line 680
    invoke-direct {v6, v13, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    .line 682
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;

    .line 685
    move-object v2, v5

    .line 687
    move-object/from16 v3, v16

    .line 688
    move-object v4, v14

    .line 690
    move-object/from16 v17, v13

    .line 691
    move-object v13, v5

    .line 693
    move-object v5, v0

    .line 694
    move-object/from16 v18, v6

    .line 695
    move v6, v10

    .line 697
    move-object/from16 v19, v7

    .line 698
    move-object/from16 v7, v18

    .line 700
    move-object/from16 v18, v8

    .line 702
    move-object/from16 v8, v19

    .line 704
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;)V

    .line 706
    move-object/from16 v2, v16

    .line 709
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 711
    invoke-virtual {v2, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    :try_start_0
    iget-object v5, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 716
    move-object v3, v12

    .line 718
    move v4, v15

    .line 719
    move-object/from16 v6, v18

    .line 720
    move-object v7, v9

    .line 722
    move-object v8, v1

    .line 723
    move v9, v10

    .line 724
    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z

    .line 725
    move-result v0

    .line 728
    if-eqz v0, :cond_14

    .line 729
    iget-object v0, v12, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mChoreographer:Landroid/view/Choreographer;

    .line 731
    const/4 v1, 0x2

    .line 733
    const/4 v2, 0x0

    .line 734
    invoke-virtual {v0, v1, v11, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 735
    iget-object v0, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 738
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 740
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 742
    move-result-object v0

    .line 745
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 746
    check-cast v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    .line 748
    if-eqz v0, :cond_16

    .line 750
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    .line 752
    invoke-virtual {v14, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 754
    move-result-object v1

    .line 757
    const/16 v2, 0x21

    .line 758
    const/4 v3, 0x0

    .line 760
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 761
    move-result v2

    .line 764
    iput-boolean v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mDrawsSystemBarBackgrounds:Z

    .line 765
    const/16 v2, 0x2d

    .line 767
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 769
    move-result v2

    .line 772
    if-eqz v2, :cond_12

    .line 773
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 775
    or-int/lit8 v2, v2, 0x8

    .line 777
    iput v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 779
    :cond_12
    const/16 v2, 0x30

    .line 781
    const/4 v3, 0x0

    .line 783
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 784
    move-result v2

    .line 787
    if-eqz v2, :cond_13

    .line 788
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 790
    or-int/lit8 v2, v2, 0x10

    .line 792
    iput v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 794
    :cond_13
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 796
    invoke-virtual/range {v17 .. v17}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    .line 799
    move-result-object v0

    .line 802
    const/4 v1, 0x4

    .line 803
    if-eq v10, v1, :cond_16

    .line 804
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;

    .line 806
    invoke-direct {v1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;-><init>(Landroid/window/SplashScreenView;)V

    .line 808
    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 811
    goto :goto_a

    .line 814
    :cond_14
    invoke-virtual/range {v17 .. v17}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    .line 815
    move-result-object v0

    .line 818
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    .line 819
    move-result-object v1

    .line 822
    if-eqz v1, :cond_16

    .line 823
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    .line 825
    move-result-object v0

    .line 828
    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_a

    .line 832
    :catch_0
    move-exception v0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    .line 834
    const-string v2, "failed creating starting window at taskId: "

    .line 836
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    move-result-object v1

    .line 847
    const-string v2, "ShellStartingWindow"

    .line 848
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    goto :goto_a

    .line 853
    :cond_15
    :goto_9
    move-object/from16 v21, v11

    .line 854
    :cond_16
    :goto_a
    move/from16 v16, v10

    .line 856
    goto/16 :goto_11

    .line 858
    :cond_17
    const/4 v1, 0x2

    .line 860
    if-ne v10, v1, :cond_16

    .line 861
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 863
    move-object/from16 v11, v21

    .line 865
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 867
    iget-object v12, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    .line 869
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 874
    iget v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 876
    iget-object v14, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 878
    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    .line 880
    iput v13, v2, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 882
    const/4 v3, 0x1

    .line 884
    invoke-virtual {v14, v2, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    .line 885
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 888
    iget-object v7, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 890
    new-instance v6, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;

    .line 892
    invoke-direct {v6, v12, v13}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V

    .line 894
    const-string v8, "Failed to add snapshot starting window res="

    .line 897
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 899
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 901
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 903
    move-result v5

    .line 906
    const/4 v9, 0x2

    .line 907
    if-ne v5, v9, :cond_19

    .line 908
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 910
    if-eqz v1, :cond_18

    .line 912
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 914
    const v2, 0x376e4b2f

    .line 916
    const/4 v3, 0x0

    .line 919
    const/4 v4, 0x0

    .line 920
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :cond_18
    move/from16 v16, v10

    .line 924
    move-object/from16 v21, v11

    .line 926
    goto :goto_c

    .line 928
    :cond_19
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 929
    if-eqz v5, :cond_1a

    .line 931
    move v15, v10

    .line 933
    int-to-long v9, v4

    .line 934
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 935
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 937
    move-result-object v9

    .line 940
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 941
    move-result-object v9

    .line 944
    const v10, 0x3dd969c7

    .line 945
    move-object/from16 v21, v11

    .line 948
    const/4 v11, 0x1

    .line 950
    move/from16 v16, v15

    .line 951
    const/4 v15, 0x0

    .line 953
    invoke-static {v5, v10, v11, v15, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 954
    goto :goto_b

    .line 957
    :cond_1a
    move/from16 v16, v10

    .line 958
    move-object/from16 v21, v11

    .line 960
    :goto_b
    iget-object v9, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 962
    const-string v5, "SnapshotStartingWindow for taskId="

    .line 964
    invoke-static {v5, v4}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 966
    move-result-object v4

    .line 969
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 970
    move-result-object v5

    .line 973
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 974
    move-result v5

    .line 977
    const/4 v10, 0x3

    .line 978
    invoke-static {v0, v4, v10, v5, v2}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 979
    move-result-object v10

    .line 982
    const-string v11, "ShellStartingWindow"

    .line 983
    if-nez v10, :cond_1b

    .line 985
    const-string v1, "TaskSnapshotWindow no layoutParams"

    .line 987
    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_c
    const/4 v1, 0x0

    .line 992
    const/4 v2, 0x0

    .line 993
    move v4, v2

    .line 994
    move/from16 v38, v13

    .line 995
    goto/16 :goto_10

    .line 997
    :cond_1b
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 999
    move-result-object v2

    .line 1002
    new-instance v15, Landroid/graphics/Rect;

    .line 1003
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 1005
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1007
    const/4 v5, 0x0

    .line 1009
    invoke-direct {v15, v5, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1010
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 1013
    move-result-object v2

    .line 1016
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getOrientation()I

    .line 1017
    move-result v4

    .line 1020
    invoke-virtual {v2, v1, v3, v15, v4}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->adjustOrientationForMultiWindow(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)I

    .line 1021
    move-result v5

    .line 1024
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 1025
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 1027
    move-result-object v17

    .line 1030
    new-instance v18, Landroid/view/SurfaceControl;

    .line 1031
    invoke-direct/range {v18 .. v18}, Landroid/view/SurfaceControl;-><init>()V

    .line 1033
    new-instance v2, Landroid/window/ClientWindowFrames;

    .line 1036
    invoke-direct {v2}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 1038
    new-instance v35, Landroid/view/InsetsSourceControl$Array;

    .line 1041
    invoke-direct/range {v35 .. v35}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 1043
    new-instance v19, Landroid/util/MergedConfiguration;

    .line 1046
    invoke-direct/range {v19 .. v19}, Landroid/util/MergedConfiguration;-><init>()V

    .line 1048
    invoke-static {v3}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    .line 1051
    move-result-object v20

    .line 1054
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    .line 1055
    move-result-object v3

    .line 1058
    move-object/from16 v22, v2

    .line 1059
    iget v2, v0, Landroid/window/StartingWindowInfo;->adaptCutout:I

    .line 1061
    invoke-virtual {v3, v10, v5, v2}, Landroid/view/WindowManagerGlobalStub;->adaptWindowCutoutForStartingWindow(Landroid/view/WindowManager$LayoutParams;II)V

    .line 1063
    new-instance v3, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    .line 1066
    move-object/from16 v37, v22

    .line 1068
    move-object v2, v3

    .line 1070
    move/from16 v38, v13

    .line 1071
    move-object v13, v3

    .line 1073
    move-object v3, v1

    .line 1074
    move/from16 v26, v4

    .line 1075
    move-object/from16 v4, v20

    .line 1077
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;-><init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1079
    iget-object v2, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 1082
    new-instance v34, Landroid/view/InsetsState;

    .line 1084
    invoke-direct/range {v34 .. v34}, Landroid/view/InsetsState;-><init>()V

    .line 1086
    new-instance v28, Landroid/view/InputChannel;

    .line 1089
    invoke-direct/range {v28 .. v28}, Landroid/view/InputChannel;-><init>()V

    .line 1091
    const/4 v3, 0x1

    .line 1094
    new-array v3, v3, [F

    .line 1095
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1097
    const/16 v20, 0x0

    .line 1099
    aput v4, v3, v20

    .line 1101
    :try_start_1
    const-string v4, "TaskSnapshot#addToDisplay"

    .line 1103
    const-wide/16 v5, 0x20

    .line 1105
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1107
    const/16 v25, 0x8

    .line 1110
    iget v4, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 1112
    new-instance v31, Landroid/graphics/Rect;

    .line 1114
    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 1116
    move-object/from16 v22, v17

    .line 1119
    move-object/from16 v23, v2

    .line 1121
    move-object/from16 v24, v10

    .line 1123
    move/from16 v27, v4

    .line 1125
    move-object/from16 v29, v34

    .line 1127
    move-object/from16 v30, v35

    .line 1129
    move-object/from16 v32, v3

    .line 1131
    invoke-interface/range {v22 .. v32}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    .line 1133
    move-result v3

    .line 1136
    const-wide/16 v4, 0x20

    .line 1137
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1139
    if-gez v3, :cond_1c

    .line 1142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1144
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    move-result-object v3

    .line 1155
    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1156
    const/4 v1, 0x0

    .line 1159
    goto/16 :goto_f

    .line 1160
    :cond_1c
    const-wide/16 v3, 0x0

    .line 1162
    goto :goto_d

    .line 1164
    :catch_1
    iget-object v3, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1165
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1167
    iget-object v4, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1169
    const-wide/16 v5, 0x0

    .line 1171
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 1173
    move-wide v3, v5

    .line 1176
    :goto_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 1180
    invoke-direct {v5, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1182
    iput-object v5, v2, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    .line 1185
    :try_start_2
    const-string v5, "TaskSnapshot#relayout"

    .line 1187
    const-wide/16 v6, 0x20

    .line 1189
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1191
    const/16 v25, -0x1

    .line 1194
    const/16 v26, -0x1

    .line 1196
    const/16 v27, 0x0

    .line 1198
    const/16 v28, 0x0

    .line 1200
    const/16 v29, 0x0

    .line 1202
    const/16 v30, 0x0

    .line 1204
    new-instance v36, Landroid/os/Bundle;

    .line 1206
    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 1208
    move-object/from16 v22, v17

    .line 1211
    move-object/from16 v23, v2

    .line 1213
    move-object/from16 v24, v10

    .line 1215
    move-object/from16 v31, v37

    .line 1217
    move-object/from16 v32, v19

    .line 1219
    move-object/from16 v33, v18

    .line 1221
    invoke-interface/range {v22 .. v36}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    .line 1223
    const-wide/16 v5, 0x20

    .line 1226
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1228
    move-object/from16 v2, v37

    .line 1231
    iget-object v7, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 1233
    const/4 v11, 0x1

    .line 1235
    move-object v2, v0

    .line 1236
    move-object v3, v10

    .line 1237
    move-object/from16 v4, v18

    .line 1238
    move-object v5, v1

    .line 1240
    move-object v6, v15

    .line 1241
    move-object v8, v9

    .line 1242
    move v9, v11

    .line 1243
    invoke-static/range {v2 .. v9}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    .line 1244
    const/4 v1, 0x1

    .line 1247
    iput-boolean v1, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    .line 1248
    :try_start_3
    iget-object v1, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    .line 1250
    iget-object v2, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 1252
    const v3, 0x7fffffff

    .line 1254
    const/4 v4, 0x0

    .line 1257
    invoke-interface {v1, v2, v4, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1258
    goto :goto_e

    .line 1261
    :catch_2
    iget-object v1, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1262
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1264
    iget-object v2, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1266
    const-wide/16 v3, 0x0

    .line 1268
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 1270
    :goto_e
    move-object v1, v13

    .line 1273
    goto :goto_f

    .line 1274
    :catch_3
    const/4 v1, 0x0

    .line 1275
    iget-object v2, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1276
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1278
    iget-object v5, v13, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1280
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 1282
    const-string v2, "Failed to relayout snapshot starting window"

    .line 1285
    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :goto_f
    move/from16 v4, v20

    .line 1290
    :goto_10
    if-eqz v1, :cond_1d

    .line 1292
    new-instance v2, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;

    .line 1294
    iget-object v0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1296
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 1298
    iget-object v3, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1300
    invoke-direct {v2, v1, v0, v3}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;ILcom/android/wm/shell/common/ShellExecutor;)V

    .line 1302
    iget-object v0, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 1305
    move/from16 v1, v38

    .line 1307
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1309
    goto :goto_12

    .line 1312
    :goto_11
    const/4 v4, 0x0

    .line 1313
    :cond_1d
    :goto_12
    if-eqz v16, :cond_22

    .line 1314
    const/4 v0, 0x5

    .line 1316
    move/from16 v1, v16

    .line 1317
    if-eq v1, v0, :cond_22

    .line 1319
    move-object/from16 v2, p0

    .line 1321
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1323
    move-object/from16 v2, v21

    .line 1325
    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 1327
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 1329
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 1331
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1333
    move-result-object v3

    .line 1336
    check-cast v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 1337
    if-nez v3, :cond_1e

    .line 1339
    move v3, v4

    .line 1341
    goto :goto_13

    .line 1342
    :cond_1e
    iget v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    .line 1343
    :goto_13
    if-eqz v3, :cond_1f

    .line 1345
    iget-object v5, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 1347
    monitor-enter v5

    .line 1349
    :try_start_4
    iget-object v6, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 1350
    invoke-virtual {v6, v0, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1352
    monitor-exit v5

    .line 1355
    goto :goto_14

    .line 1356
    :catchall_0
    move-exception v0

    .line 1357
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1358
    throw v0

    .line 1359
    :cond_1f
    :goto_14
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    .line 1360
    if-eqz v2, :cond_22

    .line 1362
    const/4 v5, 0x1

    .line 1364
    if-eq v1, v5, :cond_20

    .line 1365
    const/4 v6, 0x3

    .line 1367
    if-eq v1, v6, :cond_20

    .line 1368
    const/4 v6, 0x6

    .line 1370
    if-eq v1, v6, :cond_20

    .line 1371
    const/4 v6, 0x4

    .line 1373
    if-ne v1, v6, :cond_21

    .line 1374
    :cond_20
    move v4, v5

    .line 1376
    :cond_21
    if-eqz v4, :cond_22

    .line 1377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1379
    move-result-object v0

    .line 1382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1383
    move-result-object v1

    .line 1386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1387
    move-result-object v3

    .line 1390
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1391
    :cond_22
    const-wide/16 v0, 0x20

    .line 1394
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1396
    return-void

    .line 1399
    :goto_15
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1400
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 1402
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1404
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 1406
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 1408
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 1410
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 1412
    iput-object v0, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 1414
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    .line 1416
    iput-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 1418
    return-void

    .line 1420
    nop

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 1422
.end method
