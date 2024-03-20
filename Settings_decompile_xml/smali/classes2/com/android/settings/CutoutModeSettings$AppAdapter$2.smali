.class Lcom/android/settings/CutoutModeSettings$AppAdapter$2;
.super Ljava/lang/Object;
.source "CutoutModeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CutoutModeSettings$AppAdapter;->onBindItemViewHolder(Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/CutoutModeSettings$AppItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

.field final synthetic val$holder:Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$2;->this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    iput-object p2, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$2;->val$holder:Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 221
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$2;->val$holder:Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    :cond_0
    return v0
.end method
