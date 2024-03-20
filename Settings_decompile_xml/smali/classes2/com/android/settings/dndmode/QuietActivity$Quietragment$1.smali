.class Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;
.super Landroid/database/ContentObserver;
.source "QuietActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/QuietActivity$Quietragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/QuietActivity$Quietragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/QuietActivity$Quietragment;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;->this$0:Lcom/android/settings/dndmode/QuietActivity$Quietragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;->this$0:Lcom/android/settings/dndmode/QuietActivity$Quietragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/QuietActivity$Quietragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;->this$0:Lcom/android/settings/dndmode/QuietActivity$Quietragment;

    invoke-static {v1, v0}, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->-$$Nest$mswitchModel(Lcom/android/settings/dndmode/QuietActivity$Quietragment;I)V

    .line 50
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
