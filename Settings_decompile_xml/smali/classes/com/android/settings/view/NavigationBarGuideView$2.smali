.class Lcom/android/settings/view/NavigationBarGuideView$2;
.super Ljava/lang/Object;
.source "NavigationBarGuideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/view/NavigationBarGuideView;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/view/NavigationBarGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings/view/NavigationBarGuideView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$2;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView$2;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fputmClickOnDialog(Lcom/android/settings/view/NavigationBarGuideView;Z)V

    return-void
.end method
