.class Lcom/android/settings/MiuiBandMode$2;
.super Ljava/lang/Object;
.source "MiuiBandMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiBandMode;->resetBands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiBandMode;

.field final synthetic val$defaultGwLteBands:[J

.field final synthetic val$defaultLtePrefBands:[I

.field final synthetic val$shouldResetLtePref:Z


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiBandMode;Z[I[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$2;->this$0:Lcom/android/settings/MiuiBandMode;

    iput-boolean p2, p0, Lcom/android/settings/MiuiBandMode$2;->val$shouldResetLtePref:Z

    iput-object p3, p0, Lcom/android/settings/MiuiBandMode$2;->val$defaultLtePrefBands:[I

    iput-object p4, p0, Lcom/android/settings/MiuiBandMode$2;->val$defaultGwLteBands:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/MiuiBandMode$2;->val$shouldResetLtePref:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiBandMode"

    const-string/jumbo v1, "resetBands  setLteBandPref"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$2;->val$defaultLtePrefBands:[I

    iget-object v1, p0, Lcom/android/settings/MiuiBandMode$2;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v1}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmPhone(Lcom/android/settings/MiuiBandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/VendorUtils;->setLteBandPref([II)Z

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$2;->val$defaultGwLteBands:[J

    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$2;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmPhone(Lcom/android/settings/MiuiBandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/VendorUtils;->setXiaomiBandMode([JI)Z

    return-void
.end method
