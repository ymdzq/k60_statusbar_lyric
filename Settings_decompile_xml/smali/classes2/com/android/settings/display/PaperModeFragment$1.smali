.class Lcom/android/settings/display/PaperModeFragment$1;
.super Ljava/lang/Object;
.source "PaperModeFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 2

    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 144
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmTimeFlag(Lcom/android/settings/display/PaperModeFragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$mcheckTimeSet(Lcom/android/settings/display/PaperModeFragment;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmTimeFlag(Lcom/android/settings/display/PaperModeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$sfputmStartTime(I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$sfgetmStartTime()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeStartTime(Landroid/content/Context;I)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetpaperModeStartTime(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0, p2, p3}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$mformatChoosenTime(Lcom/android/settings/display/PaperModeFragment;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$sfputmEndTime(I)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$sfgetmEndTime()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEndTime(Landroid/content/Context;I)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetpaperModeEndTime(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0, p2, p3}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$mformatChoosenTime(Lcom/android/settings/display/PaperModeFragment;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment$1;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
