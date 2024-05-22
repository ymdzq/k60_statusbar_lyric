.class public final Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;-><init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method
