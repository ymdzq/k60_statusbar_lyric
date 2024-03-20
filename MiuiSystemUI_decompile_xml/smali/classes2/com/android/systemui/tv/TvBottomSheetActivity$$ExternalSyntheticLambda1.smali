.class public final synthetic Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tv/TvBottomSheetActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tv/TvBottomSheetActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tv/TvBottomSheetActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tv/TvBottomSheetActivity;

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBackgroundWithBlur:Landroid/graphics/drawable/Drawable;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 19
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-void
    .line 24
.end method
