<table class="table table-sm table-striped">
    {foreach $requests as $others}
        <tr>
            <td><a target="_blank" href="{$baseurl}/internal.php/viewRequest?id={$others->getId()}">#{$others->getId()}</a></td>
            <td>
                {$others->getDate()|date}<span class="text-muted">
                <em>({$others->getDate()|relativedate})</em>
              </span>
            </td>
            <td>{$others->getName()|escape}</td>
            <td>
                {if $others->getStatus() == Waca\RequestStatus::CLOSED}
                    <span class="badge badge-danger">{$others->getStatus()|escape} - {$others->getClosureReason()|escape}</span>
                {else}
                    <span class="badge badge-success">{$others->getQueueObject()->getHeader()|escape}</span>
                {/if}
            </td>
        </tr>
    {/foreach}
</table>
