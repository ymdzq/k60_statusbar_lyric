.class public final synthetic Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 2
    iget p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method
