.class Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
