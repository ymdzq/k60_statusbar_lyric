.class Lcom/android/settings/CutoutModeSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "CutoutModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$item:Lcom/android/settings/CutoutModeSettings$AppItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;ILcom/android/settings/CutoutModeSettings$AppItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    iput p2, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->val$item:Lcom/android/settings/CutoutModeSettings$AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->this$1:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    iget-object p1, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    iget-object p1, p1, Lcom/android/settings/CutoutModeSettings;->mAdapter:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    iget p2, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/android/settings/CutoutModeSettings$AppAdapter;->getItem(I)Lcom/android/settings/CutoutModeSettings$AppItem;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/settings/CutoutModeSettings$AppItem;->-$$Nest$fputmCutoutMode(Lcom/android/settings/CutoutModeSettings$AppItem;I)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;->val$item:Lcom/android/settings/CutoutModeSettings$AppItem;

    invoke-virtual {p0}, Lcom/android/settings/CutoutModeSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lmiui/os/MiuiInit;->setCutoutMode(Ljava/lang/String;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
