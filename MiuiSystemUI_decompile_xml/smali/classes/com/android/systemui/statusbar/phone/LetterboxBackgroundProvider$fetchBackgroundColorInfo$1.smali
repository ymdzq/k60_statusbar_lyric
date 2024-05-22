.class public final Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->windowManager:Landroid/view/IWindowManager;

    .line 4
    invoke-interface {v1}, Landroid/view/IWindowManager;->isLetterboxBackgroundMultiColored()Z

    .line 6
    move-result v1

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->windowManager:Landroid/view/IWindowManager;

    .line 14
    invoke-interface {v0}, Landroid/view/IWindowManager;->getLetterboxBackgroundColorInArgb()I

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 24
    :goto_0
    return-void
    .line 27
.end method
