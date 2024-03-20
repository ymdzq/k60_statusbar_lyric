.class Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$3;
.super Ljava/lang/Object;
.source "MiuiMobileDataUsedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->showDataConnectionDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$3;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$3;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
