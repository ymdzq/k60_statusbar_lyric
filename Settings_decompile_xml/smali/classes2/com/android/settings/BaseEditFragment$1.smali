.class Lcom/android/settings/BaseEditFragment$1;
.super Ljava/lang/Object;
.source "BaseEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseEditFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseEditFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/BaseEditFragment$1;->this$0:Lcom/android/settings/BaseEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/BaseEditFragment$1;->this$0:Lcom/android/settings/BaseEditFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseEditFragment;->onCancel()V

    return-void
.end method
