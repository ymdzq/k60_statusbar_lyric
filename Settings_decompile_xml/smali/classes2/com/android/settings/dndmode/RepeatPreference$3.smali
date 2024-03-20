.class Lcom/android/settings/dndmode/RepeatPreference$3;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/RepeatPreference;->showMultiChoiceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/RepeatPreference;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference$3;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$3;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {p0}, Lcom/android/settings/dndmode/RepeatPreference;->-$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(IZ)V

    return-void
.end method
