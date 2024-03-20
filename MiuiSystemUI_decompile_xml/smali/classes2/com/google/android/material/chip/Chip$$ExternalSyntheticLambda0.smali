.class public final synthetic Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/Chip;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/Chip;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Lcom/google/android/material/internal/CheckableGroup$1;

    .line 8
    iget-object v0, v0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    .line 10
    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 32
    if-eqz p0, :cond_2

    .line 34
    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 36
    :cond_2
    return-void
    .line 39
.end method
