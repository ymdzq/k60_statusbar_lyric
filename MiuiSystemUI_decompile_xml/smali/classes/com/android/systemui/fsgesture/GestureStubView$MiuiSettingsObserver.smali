.class public final Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    const-string v1, "force_black_v2"

    .line 6
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    iput-boolean v0, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mHideNotch:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 14
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 16
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    const/4 v1, 0x3

    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdaptRotation:Z

    .line 26
    return-void
    .line 28
.end method
