.class public final Lcom/google/android/material/resources/CancelableFontCallback;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

.field public cancelled:Z

.field public final fallbackFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CollapsingTextHelper$1;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    .line 5
    iput-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Landroid/graphics/Typeface;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Landroid/graphics/Typeface;)V

    .line 2
    return-void
    .line 5
.end method

.method public final updateIfNotCancelled(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    .line 6
    check-cast p0, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    .line 8
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper$1;->$r8$classId:I

    .line 10
    const/4 v1, 0x0

    .line 12
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper$1;->this$0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 15
    goto :goto_0

    .line 18
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 25
    goto :goto_1

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    .line 29
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 35
    :cond_0
    :goto_1
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
