.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCornerSize:I

.field public final mDecorationSurface:Landroid/view/SurfaceControl;

.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mFakeWindow:Lcom/android/internal/view/BaseIWindow;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mLeftBottomCornerBounds:Landroid/graphics/Rect;

.field public mLeftTopCornerBounds:Landroid/graphics/Rect;

.field public mResizeHandleThickness:I

.field public mRightBottomCornerBounds:Landroid/graphics/Rect;

.field public mRightTopCornerBounds:Landroid/graphics/Rect;

.field public mTaskHeight:I

.field public mTaskWidth:I

.field public final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    const-string v0, "DragResizeInputListener of "

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 9
    move-result-object v2

    .line 12
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 13
    const/4 v3, -0x1

    .line 15
    iput v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 16
    const-class v3, Landroid/hardware/input/InputManager;

    .line 18
    move-object/from16 v15, p1

    .line 20
    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Landroid/hardware/input/InputManager;

    .line 26
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 28
    move-object/from16 v3, p2

    .line 30
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 32
    move-object/from16 v3, p3

    .line 34
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 36
    move/from16 v3, p4

    .line 38
    iput v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    .line 40
    move-object/from16 v4, p5

    .line 42
    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 44
    new-instance v5, Lcom/android/internal/view/BaseIWindow;

    .line 46
    invoke-direct {v5}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 48
    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 51
    invoke-virtual {v5, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 53
    new-instance v12, Landroid/os/Binder;

    .line 56
    invoke-direct {v12}, Landroid/os/Binder;-><init>()V

    .line 58
    new-instance v14, Landroid/view/InputChannel;

    .line 61
    invoke-direct {v14}, Landroid/view/InputChannel;-><init>()V

    .line 63
    iput-object v14, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 66
    const/4 v6, 0x0

    .line 68
    const/16 v7, 0x8

    .line 69
    const/high16 v8, 0x20000000

    .line 71
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x2

    .line 74
    const/4 v11, 0x0

    .line 75
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v13

    .line 91
    move/from16 v3, p4

    .line 92
    move-object/from16 v4, p5

    .line 94
    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 101
    :goto_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 104
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 106
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 108
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 110
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V

    .line 112
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 115
    move-object/from16 v2, p6

    .line 117
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 119
    new-instance v2, Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 121
    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    .line 123
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 126
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 128
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 132
    move-result v0

    .line 135
    iput v0, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 136
    return-void
    .line 138
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 2
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 7
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 14
    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 21
    :goto_0
    return-void
    .line 24
.end method
