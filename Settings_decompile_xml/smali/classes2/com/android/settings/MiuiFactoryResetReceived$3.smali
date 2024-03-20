.class Lcom/android/settings/MiuiFactoryResetReceived$3;
.super Ljava/lang/Object;
.source "MiuiFactoryResetReceived.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiFactoryResetReceived;->alertCloseLockPattern()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiFactoryResetReceived;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFactoryResetReceived;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$3;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$3;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
