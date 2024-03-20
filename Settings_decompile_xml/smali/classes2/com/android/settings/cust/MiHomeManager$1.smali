.class Lcom/android/settings/cust/MiHomeManager$1;
.super Ljava/lang/Thread;
.source "MiHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cust/MiHomeManager;->isForbidden(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cust/MiHomeManager;


# direct methods
.method constructor <init>(Lcom/android/settings/cust/MiHomeManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/cust/MiHomeManager$1;->this$0:Lcom/android/settings/cust/MiHomeManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager$1;->this$0:Lcom/android/settings/cust/MiHomeManager;

    invoke-static {v0}, Lcom/android/settings/cust/MiHomeManager;->-$$Nest$minitSettingsForbiddenList(Lcom/android/settings/cust/MiHomeManager;)V

    .line 134
    iget-object p0, p0, Lcom/android/settings/cust/MiHomeManager$1;->this$0:Lcom/android/settings/cust/MiHomeManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/cust/MiHomeManager;->-$$Nest$fputmIsInitingSettingsForbiddenList(Lcom/android/settings/cust/MiHomeManager;Z)V

    return-void
.end method
