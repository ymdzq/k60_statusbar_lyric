.class public final Lcom/google/android/material/internal/ViewUtils$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

.field public final synthetic val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;-><init>(Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V

    .line 6
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 9
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method
