.class Lcom/android/settings/display/OldPaperModeFragment$1;
.super Ljava/lang/Object;
.source "OldPaperModeFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/OldPaperModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/OldPaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/OldPaperModeFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmTimeFlag(Lcom/android/settings/display/OldPaperModeFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 134
    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$sfputmStartTime(I)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$sfgetmStartTime()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeStartTime(Landroid/content/Context;I)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetpaperModeStartTime(Lcom/android/settings/display/OldPaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {v0, p2, p3}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mformatChoosenTime(Lcom/android/settings/display/OldPaperModeFragment;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 138
    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$sfputmEndTime(I)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$sfgetmEndTime()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEndTime(Landroid/content/Context;I)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetpaperModeEndTime(Lcom/android/settings/display/OldPaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {v0, p2, p3}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mformatChoosenTime(Lcom/android/settings/display/OldPaperModeFragment;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$1;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
