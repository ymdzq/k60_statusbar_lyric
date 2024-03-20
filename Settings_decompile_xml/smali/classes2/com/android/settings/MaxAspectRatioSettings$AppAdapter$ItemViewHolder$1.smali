.class Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "MaxAspectRatioSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;-><init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;->this$2:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;->val$this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    iput-object p3, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
